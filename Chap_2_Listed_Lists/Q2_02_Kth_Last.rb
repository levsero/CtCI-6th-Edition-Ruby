def find_from_end(head_node, n)
  lead_node = head_node
  n.times { lead_node = lead_node&.next_node }
  return unless lead_node
  while lead_node.next_node
    lead_node = lead_node.next_node
    head_node = head_node.next_node
  end
  head_node
end
