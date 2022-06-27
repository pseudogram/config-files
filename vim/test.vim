function! test#javascript#nx#build_position(type, position) abort
  let project = ''
  if filereadable('workspace.json')
    let l:workpaces = readfile('workspace.json')
    if exists('*json_decode')
      let l:projects = json_decode(join(workpaces, ''))['projects']
      for [key, value] in items(projects)
        if stridx(a:position['file'], value['root']) >= 0 
          let project = key
          break
        endif
      endfor
    endif
  endif

  if a:type ==# 'nearest'
    let name = s:nearest_test(a:position)
    if !empty(name)
      let name = '-t '.shellescape(name, 1)
    endif
    return [project, name, '--test-file', a:position['file'], '--no-coverage']
  elseif a:type ==# 'file'
    return [project, '--test-file', a:position['file'], '--no-coverage']
  else
    return [project, '--no-coverage']
  endif
endfunction
