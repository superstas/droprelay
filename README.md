# DropRelay

A CLI tool for secure, ephemeral file transfers directly from your local machine over a self-hosted (or default) tunnel.  
**No** clouds. **No** signup. **No** tracking.

Easy. Secure. Quick.


## What it will do

- **Easy** — just run `droprelay send <file>` and get a disposable link  
- Runs from **your machine** — the file is served directly from your local system. No upload required  
- **Disposable** by default — links expire after a single download (configurable)  
- **Tunneled over HTTPS** — works via your own self-hosted or default relay, with automatic NAT traversal  
- **Privacy-first** — zero server-side storage; optional encryption planned  
- **Open source & self-hostable** — run your own relay server with a single command


## Why not [Croc](https://github.com/schollz/croc), [Wormhole](https://github.com/magic-wormhole/magic-wormhole), or [Portal](https://github.com/SpatiumPortae/portal)?

Most tools require both sender and receiver to install the same CLI.  
DropRelay lets **anyone download the file in a browser** — no tools, no setup, perfect for cross-device transfers.

## Architecture
```
       [Sender CLI]
          |
       (wss://)
          ↓
   [ DropRelay Tunnel ]
          ↑
    (https GET request)
          |
   [ Receiver in Browser ]

```

## Implementation status
- [x] Finalize design
- [ ] Implement relay ( in progress )
- [ ] Host relay
- [ ] Implement droprelay logic
- [ ] Update installation manual 
