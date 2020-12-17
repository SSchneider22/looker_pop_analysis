connection: "snowlooker"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

# ---------- EXPLORE ----------- #

# Method 1
explore: order_items {
  label: "PoP Method 1: Use Looker's native date dimension groups"
}

# Method 2
explore: pop_simple {
  label: "PoP Method 2: Allow users to choose periods with parameters"
  always_filter: {
    filters:{field:choose_comparison}
    filters:{field:choose_breakdown}}
}
