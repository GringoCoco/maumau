# Maumau Fork — Work Plan

> Placeholder for your Apple Team ID throughout this document: **`MAUMAU_TEAM_ID`**  
> Placeholder for your relay URL throughout: **`maumau-relay.<you>.workers.dev`**  
> Generated: 2026-10-21

---

## Brand & Identity changes

Every file that carries a brand token is listed below with the exact line and the change required.

### `NotchBuddy/project.yml`

| Line(s) | Current value | New value |
|---------|--------------|-----------|
| 1 | `name: NotchBuddy` | `name: MauMau` |
| 3 | `bundleIdPrefix: fr.louisraille` | `bundleIdPrefix: com.maumau` |
| 47, 52, 60, 263, 353, 404, 450 | `DEVELOPMENT_TEAM: 256AUJ9555` | `DEVELOPMENT_TEAM: MAUMAU_TEAM_ID` |
| 55 | `CODE_SIGN_ENTITLEMENTS: Resources/Coucou.entitlements` | `CODE_SIGN_ENTITLEMENTS: Resources/MauMau.entitlements` |
| 65, 68 | scheme `NotchBuddy`, target `NotchBuddy` | `MauMau` |
| 73, 76 | scheme `CoucouAppStore`, target `CoucouAppStore` | `MauMauAppStore` |
| 81, 84 | scheme `NotchBuddyCloud`, target `NotchBuddy` | `MauMauCloud`, `MauMau` |
| 89, 92 | scheme `CoucouAppStoreCloud`, target `CoucouAppStore` | `MauMauAppStoreCloud`, `MauMauAppStore` |
| 97, 100 | scheme `CoucouPhone`, target `CoucouPhone` | `MauMauPhone` |
| 107, 110 | scheme `CoucouPhoneProduction`, target `CoucouPhone` | `MauMauPhoneProduction`, `MauMauPhone` |
| 117 | `targets: NotchBuddy:` | `targets: MauMau:` |
| 137 | `CFBundleName: Coucou` | `CFBundleName: MauMau` |
| 138 | `CFBundleDisplayName: Coucou` | `CFBundleDisplayName: MauMau` |
| 139 | `CFBundleIdentifier: fr.louisraille.NotchBuddy` | `CFBundleIdentifier: com.maumau.app` |
| 147–152 | `NSMicrophoneUsageDescription: "Coucou uses…"` (and other usage strings mentioning "Coucou") | Replace "Coucou" → "MauMau" in each string |
| 172 | `PRODUCT_BUNDLE_IDENTIFIER: fr.louisraille.NotchBuddy` | `PRODUCT_BUNDLE_IDENTIFIER: com.maumau.app` |
| 173 | `PRODUCT_NAME: Coucou` | `PRODUCT_NAME: MauMau` |
| 180 | `CODE_SIGN_ENTITLEMENTS: Resources/CoucouCloud.entitlements` | `Resources/MauMauCloud.entitlements` |
| 188, 193 | `CODE_SIGN_ENTITLEMENTS: Resources/CoucouReleaseCloud.entitlements` | `Resources/MauMauReleaseCloud.entitlements` |
| 190, 194 | `PROVISIONING_PROFILE_SPECIFIER: "Coucou Developer ID"` | `"MauMau Developer ID"` |
| 205 | `targets: CoucouAppStore:` | `MauMauAppStore:` |
| 225 | `CFBundleName: Coucou` | `MauMau` |
| 226 | `CFBundleDisplayName: Coucou` | `MauMau` |
| 227 | `CFBundleIdentifier: fr.louisraille.Coucou` | `com.maumau.app` |
| 255 | `PRODUCT_BUNDLE_IDENTIFIER: fr.louisraille.Coucou` | `com.maumau.app` |
| 256 | `PRODUCT_NAME: Coucou` | `MauMau` |
| 262 | `CODE_SIGN_ENTITLEMENTS: Resources/CoucouAppStore.entitlements` | `Resources/MauMauAppStore.entitlements` |
| 268 | `Resources/CoucouAppStoreCloud.entitlements` | `Resources/MauMauAppStoreCloud.entitlements` |
| 273 | `Resources/CoucouAppStoreCloud.entitlements` | `Resources/MauMauAppStoreCloud.entitlements` |
| 277 | `targets: CoucouPhone:` | `MauMauPhone:` |
| 304 | `CFBundleName: Coucou` | `MauMau` |
| 305 | `CFBundleDisplayName: Coucou` | `MauMau` |
| 306 | `CFBundleIdentifier: fr.louisraille.Coucou` | `com.maumau.app` |
| 321 | `NSFaceIDUsageDescription: "Coucou asks…"` | Replace "Coucou" → "MauMau" |
| 322–323 | `NSMicrophoneUsageDescription`, `NSSpeechRecognitionUsageDescription` mentioning "Coucou" | Replace "Coucou" → "MauMau" |
| 332 | `CFBundleURLName: fr.louisraille.Coucou` | `com.maumau.app` |
| 334 | `CFBundleURLSchemes: - coucou` | **Keep `coucou://` or change to `maumau://`** — must match `SharedSessions.swift` line 36 |
| 339 | `PRODUCT_BUNDLE_IDENTIFIER: fr.louisraille.Coucou` | `com.maumau.app` |
| 340 | `PRODUCT_NAME: Coucou` | `MauMau` |
| 352 | `CODE_SIGN_ENTITLEMENTS: Resources/CoucouPhone.entitlements` | `Resources/MauMauPhone.entitlements` |
| 362 | `Resources/CoucouPhoneProduction.entitlements` | `Resources/MauMauPhoneProduction.entitlements` |
| 367 | `targets: CoucouWidgets:` | `MauMauWidgets:` |
| 382 | `dependency: target: CoucouWidgets` | `MauMauWidgets` |
| 383 | `dependency: target: CoucouNotificationContent` | `MauMauNotificationContent` |
| 384 | `CFBundleName: CoucouWidgets` | `MauMauWidgets` |
| 385 | `CFBundleDisplayName: Coucou` | `MauMau` |
| 386 | `CFBundleIdentifier: fr.louisraille.Coucou.Widgets` | `com.maumau.app.Widgets` |
| 394 | `PRODUCT_BUNDLE_IDENTIFIER: fr.louisraille.Coucou.Widgets` | `com.maumau.app.Widgets` |
| 396 | `PRODUCT_NAME: CoucouWidgets` | `MauMauWidgets` |
| 403 | `CODE_SIGN_ENTITLEMENTS: Resources/CoucouWidgets.entitlements` | `Resources/MauMauWidgets.entitlements` |
| 413 | `targets: CoucouNotificationContent:` | `MauMauNotificationContent:` |
| 427 | `CFBundleName: CoucouNotificationContent` | `MauMauNotificationContent` |
| 428 | `CFBundleDisplayName: Coucou` | `MauMau` |
| 429 | `CFBundleIdentifier: fr.louisraille.Coucou.NotificationContent` | `com.maumau.app.NotificationContent` |
| 437 | `UNNotificationExtensionCategory: COUCOU_APPROVAL` | `MAUMAU_APPROVAL` (must match the string pushed by the relay/Mac) |
| 442 | `PRODUCT_BUNDLE_IDENTIFIER: fr.louisraille.Coucou.NotificationContent` | `com.maumau.app.NotificationContent` |
| 443 | `PRODUCT_NAME: CoucouNotificationContent` | `MauMauNotificationContent` |
| 200–202 | Post-build script: `CoucouGitHash` key name | Keep as-is (internal metadata key, not user-visible) |

Also rename the target block keys throughout the YAML (`CoucouPhone` → `MauMauPhone`, etc.) to match.

---

### Entitlement files (`NotchBuddy/Resources/*.entitlements`)

Rename each file (old → new) **and** update the CloudKit/App Group strings inside:

| Old filename | New filename |
|---|---|
| `Coucou.entitlements` | `MauMau.entitlements` |
| `CoucouCloud.entitlements` | `MauMauCloud.entitlements` |
| `CoucouAppStore.entitlements` | `MauMauAppStore.entitlements` |
| `CoucouAppStoreCloud.entitlements` | `MauMauAppStoreCloud.entitlements` |
| `CoucouPhone.entitlements` | `MauMauPhone.entitlements` |
| `CoucouPhoneProduction.entitlements` | `MauMauPhoneProduction.entitlements` |
| `CoucouReleaseCloud.entitlements` | `MauMauReleaseCloud.entitlements` |
| `CoucouWidgets.entitlements` | `MauMauWidgets.entitlements` |

In every entitlement file that contains CloudKit or App Group entries, make these string replacements:

| Old string | New string |
|---|---|
| `iCloud.fr.louisraille.Coucou` | `iCloud.com.maumau.app` |
| `group.fr.louisraille.Coucou` | `group.com.maumau.app` |
| `256AUJ9555.fr.louisraille.NotchBuddy` | `MAUMAU_TEAM_ID.com.maumau.app` |
| `256AUJ9555` (team-identifier key) | `MAUMAU_TEAM_ID` |

Affected files with their specific lines:
- **`CoucouCloud.entitlements`** lines 13, 20 → iCloud container, aps-environment stays `development`
- **`CoucouAppStoreCloud.entitlements`** line 15 → iCloud container
- **`CoucouPhone.entitlements`** lines 9, 17 → iCloud container, App Group
- **`CoucouPhoneProduction.entitlements`** lines 9, 19 → iCloud container, App Group
- **`CoucouReleaseCloud.entitlements`** lines 12, 14, 17 → app-identifier, team-identifier, iCloud container
- **`CoucouWidgets.entitlements`** line 7 → App Group

---

### `NotchBuddy/Sources/App/MacUpdate.swift`

| Line | Current | New |
|---|---|---|
| 9 | `static let owner = "Louis-CFM"` | `static let owner = "maumau-app"` (your GitHub org/user) |
| 10 | `static let repo = "coucou"` | `static let repo = "maumau"` (your repo name) |
| 13 | `static let bundleId = "fr.louisraille.NotchBuddy"` | `static let bundleId = "com.maumau.app"` |
| 14 | `static let teamId = "256AUJ9555"` | `static let teamId = "MAUMAU_TEAM_ID"` |
| 36 | `$0["name"] as? String == "Coucou.zip"` | `== "MauMau.zip"` (must match the GitHub Release asset name) |

---

### `NotchBuddy/Sources/App/PhoneLink/LiveActivityRelay.swift`

| Line | Current | New |
|---|---|---|
| 25 | `"defaults write fr.louisraille.NotchBuddy phoneRelayURL <url>"` (comment) | Update comment to `com.maumau.app` |
| 28 | `static let defaultRelayURL = "https://coucou-relay.raillelouis.workers.dev"` | `"https://maumau-relay.<you>.workers.dev"` |

---

### `NotchBuddy/Sources/App/PhoneLink/SessionPublisher.swift`

| Line | Current | New |
|---|---|---|
| 21 | `CKContainer(identifier: "iCloud.fr.louisraille.Coucou")` | `CKContainer(identifier: "iCloud.com.maumau.app")` |

---

### `NotchBuddy/Sources/App/PhoneLink/CloudProbe.swift`

| Line | Current | New |
|---|---|---|
| 22 | `static let containerID = "iCloud.fr.louisraille.Coucou"` | `"iCloud.com.maumau.app"` |

This is the single source of truth used by `LiveActivityRelay`, `TurnRecorder`, `InstructionRunner`, `ServiceDetailRunner`, and `ServicePublisher` via `CloudProbe.containerID` — changing it here fixes all six callers.

---

### `NotchBuddy/Sources/Phone/PhoneLink.swift`

| Line | Current | New |
|---|---|---|
| 78 | `static let containerID = "iCloud.fr.louisraille.Coucou"` | `"iCloud.com.maumau.app"` |
| 79 | `static let zoneID = CKRecordZone.ID(zoneName: "Coucou", …)` | zone name `"Coucou"` can stay (it is a CloudKit zone name, private to the container) or rename to `"MauMau"` — if you rename it, the zone must be recreated in your container |

---

### `NotchBuddy/Sources/Phone/SharedSessions.swift`

| Line | Current | New |
|---|---|---|
| 36 | `url.scheme == "coucou"` | `"maumau"` (if you changed the URL scheme in project.yml line 334) |
| 53 | `static let appGroup = "group.fr.louisraille.Coucou"` | `"group.com.maumau.app"` |

---

### `NotchBuddy/Sources/Widgets/CoucouControl.swift`

| Line | Current | New |
|---|---|---|
| 10 | `kind: "fr.louisraille.Coucou.lead"` | `"com.maumau.app.lead"` |
| 15 | `.displayName("Coucou")` | `.displayName("MauMau")` |

---

### `NotchBuddy/Sources/App/AppLog.swift`

| Line | Current | New |
|---|---|---|
| 28 | `DispatchQueue(label: "fr.louisraille.NotchBuddy.applog", …)` | `"com.maumau.app.applog"` |
| 37 | `.appendingPathComponent("Logs/NotchBuddy")` | `"Logs/MauMau"` |

---

### `NotchBuddy/Sources/App/MusicController.swift`

| Line | Current | New |
|---|---|---|
| 20 | `DispatchQueue(label: "fr.louisraille.coucou.music")` | `"com.maumau.app.music"` |

---

### `NotchBuddy/Sources/App/SpotifyController.swift`

| Line | Current | New |
|---|---|---|
| 52 | `DispatchQueue(label: "fr.louisraille.coucou.spotify")` | `"com.maumau.app.spotify"` |

---

### `NotchBuddy/Sources/App/MailController.swift`

| Line | Current | New |
|---|---|---|
| 84 | `DispatchQueue(label: "fr.louisraille.coucou.mail")` | `"com.maumau.app.mail"` |

---

### `NotchBuddy/Sources/App/ParakeetEngine.swift` (comment only)

| Line | Current | New |
|---|---|---|
| 18 | `Application Support/NotchBuddy/Models` (comment) | `Application Support/MauMau/Models` |

This comment describes where models are stored. The actual path is computed by the OS using the bundle ID; after the bundle ID changes to `com.maumau.app` the folder will automatically be `Application Support/MauMau` (Xcode derives it from `CFBundleName`). Verify after first launch.

---

### `NotchBuddy/Sources/App/FlowStore.swift` (comment only)

| Line | Current | New |
|---|---|---|
| 67 | `Application Support/NotchBuddy/Flow` (comment) | `Application Support/MauMau/Flow` |

---

### `NotchBuddy/Sources/App/HookServer.swift`

| Line | Current | New |
|---|---|---|
| 3380 | `~/Library/Application Support/NotchBuddy/nb.sock` (string in generated shell code) | `Application Support/MauMau/nb.sock` |

Also search the full file for any other hardcoded `NotchBuddy` or `fr.louisraille` path strings:

```bash
grep -n "NotchBuddy\|fr\.louisraille\|Louis-CFM\|louisraille" \
  NotchBuddy/Sources/App/HookServer.swift
```

---

### `NotchBuddy/Sources/App/ClaudeHookDetection.swift`

| Line | Current | New |
|---|---|---|
| 14 | `command.contains("NotchBuddy") \|\| command.contains("coucou")` | Add `\|\| command.contains("MauMau")` or replace both with `"maumau"` once the hook binary is renamed |

---

### `NotchBuddy/Sources/Phone/CoucouIntents.swift`

| Line | Current | New |
|---|---|---|
| 74 | `static let title: LocalizedStringResource = "Coucou"` | `"MauMau"` |

---

### `NotchBuddy/Sources/Phone/HomeView.swift`

| Line | Current | New |
|---|---|---|
| 151 | `.navigationTitle("Coucou")` | `.navigationTitle("MauMau")` |

---

### `NotchBuddy/Sources/NotificationContent/NotificationViewController.swift`

| Line | Current | New |
|---|---|---|
| 66 | `title == "Coucou"` (fallback check) | `title == "MauMau"` |

---

### `NotchBuddy/Resources/Info.plist` and other plist files

These are generated by `xcodegen` from `project.yml`; do **not** hand-edit them. Regenerate with `xcodegen generate` after updating `project.yml`.

---

### `NotchBuddy/Sources/App/Voice/WakePhrase.swift` — wake-word handling

| Lines | Note |
|---|---|
| 28, 40–42 | The wake phrase `"ok coucou"` / `"hey coucou"` — decide whether to keep it or change to `"ok maumau"` / `"hey maumau"`. If changed, also update the phonetic aliases on lines 90–92 (`cuckoo`, `kuku`, `kucou` → equivalents for "maumau"). |

---

### `NotchBuddy/Sources/App/Voice/WakeSpotter.swift`

| Line | Current | New |
|---|---|---|
| 101 | `contextualStrings: ["Coucou", "OK Coucou", …]` | `["MauMau", "OK MauMau", …]` (if wake phrase changes) |

---

### `docs/AGENTS.md`

| Occurrences | Change |
|---|---|
| Every `Coucou` brand mention (lines 1, 3, 69–72, 114, 130, etc.) | Replace with `MauMau` |
| Socket paths: `Application Support/NotchBuddy/nb.sock` (line 69), `fr.louisraille.Coucou/Data/nb.sock` (line 70), `coucou-<user-SID>` pipe (line 71), `coucou.sock` (line 72) | Update to MauMau equivalents |
| `nb-hook` / `coucou-hook.exe` binary names (lines 19, 35, 49, 228–231) | Rename hook binary accordingly |

---

## OpenCode — promote from `githubOnly`

### What `githubOnly: true` does

In `NotchBuddy/Sources/CoucouKit/PillCatalog.swift`, `PillCatalog.available` (lines 138–143) filters out pills with `githubOnly: true` when compiled under the `APPSTORE` flag:

```swift
static var available: [PillDefinition] {
    #if APPSTORE
    all.filter { !$0.githubOnly }
    #else
    all
    #endif
}
```

The MauMau fork will **not** use the App Store distribution path initially, so the `#if APPSTORE` branch will not activate — OpenCode is already visible in Debug/Release builds. However, to make it permanently non-restricted regardless of build target:

### Change required in `PillCatalog.swift`

**Line 87–88** — remove `githubOnly: true`:

```swift
// Before:
.init(id: "agent_opencode", name: "OpenCode", color: "#4ADE80",
      category: .agent, subtitle: String(localized: "Agent"), source: .agent, githubOnly: true),

// After:
.init(id: "agent_opencode", name: "OpenCode", color: "#4ADE80",
      category: .agent, subtitle: String(localized: "Agent"), source: .agent),
```

This makes OpenCode appear in `PillCatalog.available` even when `APPSTORE` is defined, so it shows in Settings → Active pills in every build.

### Auto-install hook on first launch

Currently the OpenCode plugin is installed manually via **Settings → OpenCode Plugin → Install plugin** (documented in `docs/AGENTS.md` lines 181–183). The installer in `HookServer.swift` writes `~/.config/opencode/plugins/coucou.js` (the plugin file is defined in `agents.rs` line 759 on the Windows side, and mirrored on the Mac).

To promote OpenCode to auto-install on first launch:
1. In `AppDelegate.swift` or a dedicated first-launch hook, check `UserDefaults` for a `openCodeAutoInstalled` key.
2. If absent, call the same install path that the Settings button calls, then set the flag.
3. The plugin file name (`coucou.js`) should be renamed to `maumau.js` — update the path in both `HookServer.swift` (Mac) and `agents.rs` (Windows/Linux).

---

## Russian language — make it default

### What currently exists

`NotchBuddy/Resources/Localizable.xcstrings` already declares `ru` (Russian) as one of the `CFBundleLocalizations` (project.yml lines 165, 248). The `.xcstrings` file contains the Russian translation strings (inspect it with Xcode's string catalog editor to see coverage).

### How to make Russian the first/default language in the UI

macOS and iOS determine the display language from the user's system locale, not from a value baked into the app. There is **no single "set default locale" switch** in the app itself. The practical approaches are:

1. **Ship Russian strings with high completeness** — any string without an `ru` translation falls back to English. Run `yarn workspace … extract` (or the equivalent for this project: `xcodebuild -exportLocalizations` / `xcodegen` then review the `.xcstrings`) to audit missing translations. Fill every key.

2. **Remove English as a fallback language** — not recommended; breaks users on other languages.

3. **For internal/team use**: set `DEVELOPMENT_LANGUAGE = ru` in `project.yml`'s global settings block. This makes Russian the source-of-truth language in Xcode's string catalog and means untranslated keys show Russian text. Add to `settings.base`:
   ```yaml
   DEVELOPMENT_LANGUAGE: ru
   ```

4. **For the Windows/Linux Tauri app**: the strings live in `windows/src/` as TypeScript. Audit for any `strings.json` or i18n file and translate/prioritize Russian there.

### Audit command

```bash
# Find all user-facing string literals still in English in the Mac sources:
grep -rn 'String(localized:' NotchBuddy/Sources/ | grep -v '\.xcstrings'
```

### `windows/src/` — strings.json

Search the windows source for any centralized string file:

```bash
grep -rn '"en"\|i18n\|locale\|strings' windows/src/ --include="*.ts" --include="*.json" -l
```

Replace any hardcoded `"Coucou"` strings in TypeScript/Rust with `"MauMau"`, then add Russian translations for any string map that exists.

---

## Relay fork

### Steps to create `maumau-relay` as a new Cloudflare Worker

#### 1. Copy the relay source

```bash
cp -r relay/ maumau-relay/
cd maumau-relay/
```

#### 2. Changes in `maumau-relay/wrangler.toml`

Current (`relay/wrangler.toml`):
```toml
name = "coucou-relay"
main = "src/index.ts"
compatibility_date = "2026-09-01"
workers_dev = true

[vars]
APNS_TEAM_ID = "256AUJ9555"
APNS_TOPIC = "fr.louisraille.Coucou.push-type.liveactivity"

[observability]
enabled = false
```

New (`maumau-relay/wrangler.toml`):
```toml
name = "maumau-relay"
main = "src/index.ts"
compatibility_date = "2026-09-01"
workers_dev = true

[vars]
APNS_TEAM_ID = "MAUMAU_TEAM_ID"
APNS_TOPIC = "com.maumau.app.push-type.liveactivity"

[observability]
enabled = false
```

#### 3. Changes in `maumau-relay/src/index.ts`

| Line | Current | New |
|---|---|---|
| 36 | `return text(200, "Coucou relay")` | `return text(200, "MauMau relay")` |
| 126 | `aps["alert"] = { title: "Coucou", body: … }` | `aps["alert"] = { title: "MauMau", body: … }` |

No other logic changes are required — the relay is stateless and the APNs key/topic/team-ID come from Worker secrets and `wrangler.toml` vars.

#### 4. Deploy steps

```bash
cd maumau-relay/
npm install
npx wrangler login          # authenticate to your Cloudflare account
npx wrangler secret put APNS_KEY_ID   # paste your Key ID from Apple Developer
npx wrangler secret put APNS_KEY < ~/Downloads/AuthKey_XXXXXXXXXX.p8
npx wrangler deploy
# Prints: https://maumau-relay.<your-subdomain>.workers.dev
```

Verify: `curl https://maumau-relay.<you>.workers.dev/` should return `MauMau relay`.

#### 5. Point the Mac app at the new relay

After updating `LiveActivityRelay.swift` line 28 (see Brand section), the Mac will use your relay by default. The user can still override with:
```bash
defaults write com.maumau.app phoneRelayURL <url>
```

---

## iPhone integration

### CloudKit container identifiers

All entitlement files and Swift source files reference `iCloud.fr.louisraille.Coucou`. Replace everywhere with `iCloud.com.maumau.app`:

| File | Line(s) |
|---|---|
| `CoucouCloud.entitlements` → `MauMauCloud.entitlements` | 13 |
| `CoucouAppStoreCloud.entitlements` → `MauMauAppStoreCloud.entitlements` | 15 |
| `CoucouPhone.entitlements` → `MauMauPhone.entitlements` | 9 |
| `CoucouPhoneProduction.entitlements` → `MauMauPhoneProduction.entitlements` | 9 |
| `CoucouReleaseCloud.entitlements` → `MauMauReleaseCloud.entitlements` | 17 |
| `Sources/App/PhoneLink/CloudProbe.swift` | 22 |
| `Sources/App/PhoneLink/SessionPublisher.swift` | 21 |
| `Sources/Phone/PhoneLink.swift` | 78 |

After changing these, **register the new container** in your Apple Developer account:
- Apple Developer Portal → Identifiers → iCloud Containers → **+** → Identifier: `iCloud.com.maumau.app`

### App Group identifiers

Replace `group.fr.louisraille.Coucou` → `group.com.maumau.app`:

| File | Line |
|---|---|
| `CoucouPhone.entitlements` → `MauMauPhone.entitlements` | 17 |
| `CoucouPhoneProduction.entitlements` → `MauMauPhoneProduction.entitlements` | 19 |
| `CoucouWidgets.entitlements` → `MauMauWidgets.entitlements` | 7 |
| `Sources/Phone/SharedSessions.swift` | 53 |

Register in Apple Developer Portal → Identifiers → App Groups → **+** → `group.com.maumau.app`.

### `MochiActivityAttributes` — bundle ID in the APNs topic

The APNs Live Activity push topic is constructed from the bundle ID:

- **Current** (in `relay/wrangler.toml` line 10): `fr.louisraille.Coucou.push-type.liveactivity`
- **New** (in `maumau-relay/wrangler.toml`): `com.maumau.app.push-type.liveactivity`

Apple requires this topic to match the iPhone app's bundle ID + `.push-type.liveactivity`. No change is needed in `MochiActivityAttributes.swift` itself — the struct is purely a type tag. The bundle ID drives the topic.

### APNs key

You need a fresh APNs key in **your** Apple Developer account:
1. Apple Developer → Keys → **+** → Name: "MauMau relay" → tick **Apple Push Notifications service (APNs)** → Sandbox & Production → Register → **Download** the `.p8` (once only).
2. Note the **Key ID** and your **Team ID** (both go into `wrangler secret` and `wrangler.toml`).

### TestFlight

Register the following App IDs in Apple Developer Portal under your team:
- `com.maumau.app` (iPhone + macOS App Store)
- `com.maumau.app` (macOS Developer ID binary uses different bundle: `com.maumau.app` or keep `com.maumau.notchbuddy` — choose one and be consistent in `project.yml`)
- `com.maumau.app.Widgets`
- `com.maumau.app.NotificationContent`

Create a new App in App Store Connect for each platform, matching those bundle IDs. Upload a TestFlight build for the iPhone target to get push/APNs entitlements activated.

### Alert body using "MauMau" instead of "Coucou"

In `relay/src/index.ts` (and your forked `maumau-relay/src/index.ts`):

```typescript
// Line 126 — start event alert:
aps["alert"] = { title: "MauMau", body: `${state.agent} · ${state.statusText}` };

// Line 132 — urgent update alert:
aps["alert"] = { title: String(state.agent), body: String(state.statusText) };
// (line 132 already uses agent name, no "Coucou" hardcoded — no change needed)
```

### `UNNotificationExtensionCategory`

In `project.yml` line 437, the notification content extension category is `COUCOU_APPROVAL`. The Mac app sends this category string in the push payload. Change in `project.yml`:
```yaml
UNNotificationExtensionCategory: MAUMAU_APPROVAL
```
**And** update the corresponding string in `HookServer.swift` / wherever the Mac constructs the approval push payload to send `MAUMAU_APPROVAL`. Search:
```bash
grep -rn "COUCOU_APPROVAL" NotchBuddy/Sources/
```

---

## Windows/Linux Tauri app

### `windows/src-tauri/tauri.conf.json`

| Line | Current | New |
|---|---|---|
| 3 | `"productName": "Coucou"` | `"MauMau"` |
| 5 | `"identifier": "fr.louisraille.coucou"` | `"com.maumau.app"` |
| 21 | `"title": "Coucou"` (island window) | `"MauMau"` |
| 51 | `"../target/release/coucou-hook.exe": "coucou-hook.exe"` | `"maumau-hook.exe": "maumau-hook.exe"` (if binary renamed) |
| 52 | `"copyright": "© Louis Raille"` | `"© MauMau"` (or your entity) |
| 55 | `"longDescription": "Coucou puts Mochi…"` | Update to MauMau |

### `windows/src-tauri/tauri.linux.conf.json`

| Line | Current | New |
|---|---|---|
| 10 | `"../target/release/coucou-hook.exe": null` | `"../target/release/maumau-hook.exe": null` (if renamed) |
| 11 | `"../target/release/coucou-hook": "coucou-hook"` | `"../target/release/maumau-hook": "maumau-hook"` |
| 35 | `"title": "Coucou"` | `"MauMau"` |

### `windows/src-tauri/Cargo.toml`

| Line | Current | New |
|---|---|---|
| 2 | `name = "coucou"` | `"maumau"` |
| 3 | `description = "Coucou for Windows and Linux…"` | `"MauMau for Windows and Linux…"` |
| 4 | `authors = ["Louis Raille"]` | Your name/org |

### `windows/src-tauri/src/agents.rs`

| Line | Current | New |
|---|---|---|
| 21 | `const MARKER: &str = "coucou-hook"` | `"maumau-hook"` |
| 739–740 | `const GENERATED: &str = "generated by Coucou"` | `"generated by MauMau"` |
| 759 | `OPENCODE_PLUGIN` string: `"// Coucou plugin for OpenCode — generated by Coucou."` | Replace both `Coucou` occurrences with `MauMau` |
| 786 | `export const CoucouPlugin = …` | `export const MauMauPlugin = …` |
| 814 | `id: 'coucou'` | `id: 'maumau'` |
| 851 | `return CoucouPlugin(ctx)` | `return MauMauPlugin(ctx)` |
| 853 | `server: CoucouPlugin` | `server: MauMauPlugin` |
| 857 | `AMP_PLUGIN`: `"// Coucou plugin for Amp — generated by Coucou."` | Replace `Coucou` → `MauMau` |
| 893 | `HERMES_PLUGIN`: `"# Coucou plugin for Hermes Agent — generated by Coucou."` | Replace `Coucou` → `MauMau` |
| 963 | `HERMES_PLUGIN_YAML`: `name: coucou` | `name: maumau` |
| 965 | `description: Coucou island integration — generated by Coucou` | Replace `Coucou` → `MauMau` |
| 981, 982 | Windows path constants in tests: `…\Coucou\bin\coucou-hook.exe` | `…\MauMau\bin\maumau-hook.exe` |

Also run a broad search for remaining `coucou` occurrences in the Rust source:
```bash
grep -rn "coucou\|Coucou\|louisraille\|Louis-CFM" windows/src-tauri/src/
```

### `windows/src/island/agents.ts`

| Line | Current | New |
|---|---|---|
| 49 | `/** The pill label: the agent's own name when Coucou knows it…*/` (comment) | Replace "Coucou" → "MauMau" |

No functional changes needed in `KNOWN_AGENTS` — agent IDs and colors mirror `PillCatalog.swift` and don't carry the Coucou brand.

### Relay URL in Windows/Linux app

Search for the relay URL in the Rust sources:
```bash
grep -rn "coucou-relay\|raillelouis\|workers.dev" windows/src-tauri/src/
```

Update any hardcoded relay URL to `https://maumau-relay.<you>.workers.dev`.

### Named pipe / socket identifiers

In `docs/AGENTS.md` line 71, the Windows pipe is `\\.\pipe\coucou-<user-SID>`. This string is constructed in `windows/src-tauri/src/` (likely `server.rs` or `platform/`). Find and replace:
```bash
grep -rn "coucou-" windows/src-tauri/src/ --include="*.rs"
```
Replace `coucou-` prefix in the pipe name with `maumau-`.

Similarly the Linux socket is `coucou.sock` — find and rename to `maumau.sock`.

### mDNS service type

In `windows/src-tauri/Cargo.toml` line 33, the mDNS service type is `_coucou._tcp`. Find where this string is defined in `windows/src-tauri/src/` and change to `_maumau._tcp` (this must also match any Android pairing code that reads the service type):
```bash
grep -rn "_coucou._tcp\|mdns\|dns-sd" windows/src-tauri/src/ --include="*.rs"
```

---

## Android

### Package name

`android/app/build.gradle.kts` lines 19 and 22:
```kotlin
// Current:
namespace = "com.coucou.android"
applicationId = "com.coucou.android"

// New:
namespace = "com.maumau.android"
applicationId = "com.maumau.android"
```

### `android/settings.gradle.kts`

| Line | Current | New |
|---|---|---|
| 8 | `rootProject.name = "coucou-android"` | `"maumau-android"` |

### `android/i18n/app-strings.json`

All display strings referencing "Coucou" need updating. Key entries:

| Key | Current value | New value |
|---|---|---|
| `app_name` | `"Coucou for Android"` | `"MauMau for Android"` |
| `about_unofficial` | `"Coucou for Android, by …"` | `"MauMau for Android, by …"` |
| `widget_btn_home_cd` | `"Open Coucou"` | `"Open MauMau"` |
| `pairing_help` | `"On your computer open Coucou…"` | `"On your computer open MauMau…"` |
| `pairing_footer` | `"Coucou for Android, by …"` | `"MauMau for Android, by …"` |
| All remaining `"Coucou"` occurrences | — | Replace with `"MauMau"` |

Full search:
```bash
grep -n "Coucou\|coucou" android/i18n/app-strings.json
```

### `android/app/src/debug/AndroidManifest.xml`

| Line | Current | New |
|---|---|---|
| 8 | `com.coucou.android.debug.WIDGET_STATE` | `com.maumau.android.debug.WIDGET_STATE` |

### All Kotlin source files

The package name appears in every `.kt` file header and import. A package rename is most reliably done via Android Studio's **Refactor → Rename Package** on `com.coucou.android`. Manual grep:
```bash
grep -rn "com\.coucou\.android" android/app/src/ --include="*.kt"
```

### Pairing URL scheme

The pairing deep-link is `coucou://pair?…` (visible in `android/tools/dev-desktop.mjs` line 365 and `android/RELAY_PLAN.md` line 66). If you change the iOS URL scheme to `maumau://`, update this too — or keep `coucou://` on both platforms for compatibility.

### mDNS service type

`android/` uses `_coucou._tcp` to discover the desktop. Search:
```bash
grep -rn "_coucou\|mdns\|NsdServiceInfo" android/app/src/ --include="*.kt"
```
Change to `_maumau._tcp` to match the Rust change above.

### Keystore environment variables

`android/app/build.gradle.kts` lines 13–16 read:
```
COUCOU_KEYSTORE_FILE, COUCOU_KEYSTORE_PASSWORD, COUCOU_KEY_ALIAS, COUCOU_KEY_PASSWORD
```
Rename to `MAUMAU_KEYSTORE_*` — update CI/CD secrets accordingly.

### Android relay (`android/relay/`)

`android/relay/wrangler.toml` line 3: `name = "coucou-link"` → `"maumau-link"`.  
`android/relay/src/protocol.ts` lines 10–11: `SUBPROTOCOL = "coucou.v1"`, `JOIN_PREFIX = "coucou.join."` — if you change the protocol strings, also update the matching strings in the Kotlin app and Windows/Linux Rust code. Changing protocol strings is a **breaking change** for existing paired devices. Consider keeping them as-is until all platforms ship simultaneously.

---

## Prioritized task list

### Phase 1 — Critical: the app builds and runs

1. **Obtain Apple Team ID** — enroll in Apple Developer Program under the MauMau account. Note the 10-character Team ID (replaces `MAUMAU_TEAM_ID` everywhere).

2. **Register Apple identifiers** — in Apple Developer Portal:
   - App IDs: `com.maumau.app`, `com.maumau.app.Widgets`, `com.maumau.app.NotificationContent`
   - iCloud Container: `iCloud.com.maumau.app`
   - App Group: `group.com.maumau.app`

3. **Update `project.yml`** — all bundle IDs, product names, team IDs, scheme names, entitlement file references (see Brand section above). This is the master file; all other Xcode metadata derives from it.

4. **Rename and update all entitlement files** — rename the 8 `.entitlements` files, replace container/group strings inside them (see Entitlement files section).

5. **Run `xcodegen generate`** — regenerates `NotchBuddy.xcodeproj` from the updated `project.yml`. Verify Xcode opens without errors.

6. **Fix Swift sources — identifiers** — update `CloudProbe.swift`, `SessionPublisher.swift`, `PhoneLink.swift`, `SharedSessions.swift`, `AppLog.swift`, `MusicController.swift`, `SpotifyController.swift`, `MailController.swift` (exact lines listed above).

7. **Update `MacUpdate.swift`** — owner, repo, bundleId, teamId, zip asset name (lines 9–14, 36).

8. **Update Tauri app identifiers** — `tauri.conf.json`, `tauri.linux.conf.json`, `Cargo.toml` (Windows/Linux).

9. **Update `agents.rs` MARKER and plugin strings** — `coucou-hook` → `maumau-hook`, plugin IDs, generated-by comments.

10. **Rename the hook binary** (if desired) — update any Makefile / CI script that produces `coucou-hook` / `coucou-hook.exe`. Update references in `tauri.conf.json`, `tauri.linux.conf.json`, `agents.rs`, `docs/AGENTS.md`.

11. **Compile and verify** — `yarn build` (or `cargo build`) and `xcodebuild` with the Debug scheme. Confirm no bundle ID / entitlement mismatches.

---

### Phase 2 — Brand: looks like MauMau

12. **Display name strings** — update all `CFBundleDisplayName` (via `project.yml`, already done in step 3), Info.plist usage description strings mentioning "Coucou", `CoucouControl.swift` display name, `HomeView.swift` nav title, `CoucouIntents.swift` title, `NotificationViewController.swift` fallback.

13. **`docs/AGENTS.md`** — update all brand references, socket paths, binary names.

14. **`windows/src-tauri/tauri.conf.json`** — product name, window title, descriptions, copyright.

15. **`windows/src/island/agents.ts`** — update the one comment with "Coucou".

16. **Android `app-strings.json`** — replace all "Coucou" display strings with "MauMau".

17. **App icons / assets** — replace `AppIcon` in `Assets.xcassets` and `PhoneAssets.xcassets` with MauMau artwork. Replace `icons/` in `windows/src-tauri/icons/`. (Design work, outside scope of this code plan.)

18. **Wake phrase** (optional brand decision) — if changing `"ok coucou"` → `"ok maumau"`, update `WakePhrase.swift` lines 40–42, phonetic aliases lines 90–92, and `WakeSpotter.swift` line 101.

---

### Phase 3 — Russian as default

19. **Audit `.xcstrings` coverage** — open `NotchBuddy/Resources/Localizable.xcstrings` in Xcode's string catalog editor. Export with `xcodebuild -exportLocalizations -localizationPath /tmp/locs` and inspect `/tmp/locs/ru.xcloc` for missing keys.

20. **Fill missing Russian translations** — translate every English string that lacks an `ru` entry. Prioritize user-facing UI strings (settings labels, status text, approval prompts).

21. **Set `DEVELOPMENT_LANGUAGE: ru`** — add to `project.yml` `settings.base` block if Russian is to be the canonical source language.

22. **Windows/Linux i18n** — search `windows/src/` for any string map or i18n helper. Add Russian entries for every key.

23. **Android `app-strings.json`** — add a `ru` block with Russian translations for every key in the `en` block. Verify the Android app's locale resolution picks up the system language.

---

### Phase 4 — OpenCode promoted

24. **Remove `githubOnly: true` from `agent_opencode`** in `PillCatalog.swift` line 87–88 (see OpenCode section).

25. **Rename plugin file** from `coucou.js` → `maumau.js` in `agents.rs` (line 148 path) and `HookServer.swift` (Mac path).

26. **Auto-install on first launch** — add first-launch detection in `AppDelegate.swift` (Mac) and the equivalent in `main.rs`/`app.rs` (Windows/Linux) to call the OpenCode plugin installer automatically.

27. **Update `docs/AGENTS.md`** — reflect that OpenCode is now installed automatically, not manually.

---

### Phase 5 — Own relay deployed

28. **Create APNs key** — Apple Developer → Keys → + → APNs → Download `.p8`. Note Key ID.

29. **Fork relay source** — `cp -r relay/ maumau-relay/` (or create a sibling repo).

30. **Update `wrangler.toml`** — name, APNS_TEAM_ID, APNS_TOPIC (see Relay fork section).

31. **Update `src/index.ts`** — "Coucou relay" → "MauMau relay", alert title (lines 36, 126).

32. **Deploy** — `npx wrangler secret put APNS_KEY_ID && npx wrangler secret put APNS_KEY < AuthKey.p8 && npx wrangler deploy`.

33. **Update `LiveActivityRelay.swift` line 28** — set `defaultRelayURL` to the deployed URL.

34. **Verify relay** — `curl https://maumau-relay.<you>.workers.dev/` → `MauMau relay`.

---

### Phase 6 — iPhone works end-to-end

35. **Register iPhone app in App Store Connect** — create the app record for `com.maumau.app` on iOS, enable Push Notifications and Live Activities capabilities.

36. **Provision the iPhone build** — create provisioning profiles for:
   - `com.maumau.app` (iPhone app)
   - `com.maumau.app.Widgets`
   - `com.maumau.app.NotificationContent`

37. **Create CloudKit schema** — after first run of the iPhone app against `iCloud.com.maumau.app`, open CloudKit Console → your container → Schema → deploy the schema to production.

38. **TestFlight upload** — archive `MauMauPhone` target, upload to TestFlight, install on a test device.

39. **End-to-end test**:
   - Mac (DebugCloud or ReleaseCloud build) and iPhone both signed into the same iCloud account.
   - Start an agent session on Mac → verify it appears in the iPhone app.
   - Lock the Mac → verify the Live Activity starts in the iPhone's Dynamic Island via the relay.
   - Approve a command from the Lock Screen → verify the Mac receives the decision.

40. **Verify App Group** — widget on iPhone shows current session from the shared App Group container (`group.com.maumau.app`). If blank, check entitlements on both the app and the widget extension match exactly.

---

## Quick reference: global find-and-replace map

Run these substitutions across the entire repository (excluding `dist/`, `.git/`, `*.lock`):

| Find | Replace | Scope |
|---|---|---|
| `fr.louisraille.NotchBuddy` | `com.maumau.app` | all text files |
| `fr.louisraille.Coucou` | `com.maumau.app` | all text files |
| `fr.louisraille.coucou` | `com.maumau.app` | all text files |
| `iCloud.fr.louisraille.Coucou` | `iCloud.com.maumau.app` | all text files |
| `group.fr.louisraille.Coucou` | `group.com.maumau.app` | all text files |
| `256AUJ9555` | `MAUMAU_TEAM_ID` | all text files |
| `coucou-relay.raillelouis.workers.dev` | `maumau-relay.<you>.workers.dev` | all text files |
| `fr.louisraille.Coucou.push-type.liveactivity` | `com.maumau.app.push-type.liveactivity` | wrangler.toml, relay sources |
| `Louis-CFM/coucou` | `<your-github-org>/maumau` | MacUpdate.swift, README files |
| `bundleIdPrefix: fr.louisraille` | `bundleIdPrefix: com.maumau` | project.yml |

> **Do not** blindly replace `"Coucou"` as a bare word across Swift sources — it appears in CloudKit zone names (`zoneName: "Coucou"`), NSError domains (`NSError(domain: "Coucou", …)`), and WhatsApp device names (`device_id: "coucou"`). Decide deliberately for each context whether that string needs to change or can remain as an internal protocol token.
