
```sh
curl \
-H "Content-Type: application/json" \
-X POST \
--data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' \
8.129.172.186:8545  
```


```sh
curl \
--location \
-X GET \
'http://127.0.0.1:8086/getWTAList?module=account&action=txlist&startblock=484198&endblock=556326&sort=asc&address=0xcccb18dffa3800d08ce7821305df43055630e11a'   
```

```sh
curl \ 
--location \
-X POST \
-H 'User-Agent: apifox/1.0.0 (https://www.apifox.cn)' \
-H 'Content-Type: application/json' \
'10.211.55.10:8888/mix/start' \
--data-raw '{
    "appid": 1234567,
    "task_id": "test",
    "timestamp": 1617930140,
    "nonce": 1,
    "signature": "7b7a12a6d846d33f5d0c7a2e4cb",
    "MixInput": [
        {
            "url": "avertp://experience.com/1234567/stream_1",
            "rect": {
                "layer": 0,
                "top": 0,
                "left": 0,
                "bottom": 480,
                "right": 640
            },
            "volume": 100
        }
    ],
    "MixOutput": [
        {
            "urllist": [
                "avertp://experience.com/1234567/stream_mix"
            ],
            "bitrate": 800000,
            "fps": 15,
            "width": 640,
            "height": 480,
            "audio_enc_id": 0,
            "audio_bitrate": 0,
            "audio_channel_cnt": 1,
            "with_sound_level": 1,
            "encode_mode": 0,
            "encode_qua": 23
        }
    ],
    "id_name": "regTest",
    "seq": 1617930143,
    "extra_params": [
        {
            "key": "appid",
            "value": "1234567"
        },
        {
            "key": "LayoutSideFlag",
            "value": "0"
        },
        {
            "key": "client_timestamp",
            "value": "1617930140"
        }
    ],
    "eos": 0,
    "live_channel": ""
}'
```