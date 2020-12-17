connection: "snowlooker"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

# ---------- EXPLORE ----------- #

# Method 1
explore: order_items {
  label: "PoP Method 1: Use Looker's native date dimension groups"
}

# Method 2
