{
  a: {
    b: {},
    c: {}
  },
  d: {}
}

def print_file_path(paths)
  path_tree = {};
  paths.each do |path|
    node = path_tree
    path.split('/').each do |name|
      node[name] ||= {}
      node = node[name]
    end
  end
  print_tree(path_tree)
end

def print_tree(path_tree, indentation = 0)
  path_tree.each do |key, values|
    indent = '  ' * indentation
    puts "#{indent}#{key}"
    print_tree(values, indentation + 1)
  end
end

print_file_path(['a/b/c', 'a/b/d', 'b/c', 'b/f/a', 'f'])
