connection: "looker-private-demo"

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

# Method 3
explore: pop_parameters {
  label: "PoP Method 3: Custom choice of current and previous periods with parameters"
  always_filter: {
    filters:{field:current_date_range value:"6 months"}
    filters:{field:compare_to value:"Year" }}
}

# Method 6
  # explore: pop_arbitrary {
  #   label: "PoP Method 6: Compare two arbitrary date ranges"
  #   always_filter: {
  #     filters:{field:first_period_filter}
  #     filters:{field:second_period_filter}
  #     filters:{field:period_selected value:"-NULL"}}
  # }


# aaaaaa
