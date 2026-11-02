# 🌿 WasteWise — Smart Waste Management & Recycling Platform

A complete, production-grade, full-stack **MERN** application designed for conscious citizens, housing societies, and municipal waste collection hubs to automate doorstep recyclable scrap collection, monitor real-time environmental impact, and issue verified database-backed reward points.

---

## ⚡ Super-Fast 1-Click Launch (Recommended for Presentations)

Just double-click **`start-wastewise.bat`** in this folder!

It will:
1. Free any old background port processes on `5000` & `5173`.
2. Start the Backend API server on `http://localhost:5000`.
3. Start the Frontend Client on `http://localhost:5173`.
4. Automatically open your browser directly to **`http://localhost:5173/login`**!

To stop the servers anytime, double-click **`stop-wastewise.bat`**.

---

## 💻 Manual Terminal Launch (Alternative)

Open a terminal or PowerShell in `c:\Users\ms979\WasteWise` and run:

```powershell
npm run dev
```

Then visit in your browser:
👉 **[http://localhost:5173](http://localhost:5173)**

---

## 🔑 Demo Accounts for Project Presentation

On the login screen (`/login`), you can click the **1-Click Quick Demo Login** buttons:

| Account Type | Email | Password | Features to Demonstrate |
| :--- | :--- | :--- | :--- |
| **Citizen (Alex)** | `alex@wastewise.org` | `user123456` | 380 reward points, 2 unlocked badges, Schedule Pickup with Leaflet Map location, pickup history. |
| **Administrator** | `admin@wastewise.org` | `admin123456` | Master KPI dashboard, Pickup Queue, collector scheduling, **weighing scrap & awarding reward points**, audit logs. |
| **Top Recycler (Priya)** | `priya@wastewise.org` | `user123456` | 890 reward points, 112.5 kg diverted scrap, 4 badges, #1 leaderboard ranking. |

*(You can also use "Continue with Google" or register a new citizen account directly).*

---

## 🎯 College Presentation Walkthrough (Step-by-Step)

1. **Landing Page (`http://localhost:5173`)**:
   - Show the animated hero section, real-world carbon diversion metrics, 3-step workflow, and waste category rates cards.
2. **Citizen Pickup Request**:
   - Log in as **Demo User** (`alex@wastewise.org`).
   - Click the green **"Schedule Pickup"** button.
   - Select a waste category (e.g. *Plastic Bottles*, *E-Waste*, or *Cardboard*).
   - Enter quantity (e.g. `8.5 kg`) — the live reward counter calculates points in real-time (`~85 pts`).
   - Use the **interactive Leaflet map**: click "Use Current Location" or drag the green marker over your doorstep.
   - Submit the request.
3. **Admin Verification & Point Award**:
   - Sign out and click **Demo Admin** (`admin@wastewise.org`).
   - Open **Pickup Queue (`/admin/requests`)**.
   - Click **"Accept"**, then click **"Verify & Award Points"**.
   - Enter verified weight from scales (e.g. `9.0 kg`) and confirm.
   - The backend validates the entry, updates status to completed, credits reward points, and checks for milestone badges!
4. **Leaderboard & Perk Redemption**:
   - Switch back to the citizen account and visit **Leaderboard (`/leaderboard`)**.
   - See updated balance, podium ranks, and redeem points for native tree plantings or eco vouchers with confetti animation.

---

## 🛡️ Database & Dual-Mode Architecture

- **Automatic Dual-Engine**:
  - Connects to MongoDB Atlas or local MongoDB if configured in `server/.env`.
  - If no live MongoDB service is reachable, it **instantly switches to the WasteWise Zero-Delay Local Database Engine** with persistent storage in `server/data/dbStore.json`.
  - **Zero downloads! Zero buffering timeouts! 100% reliable offline or online!**
