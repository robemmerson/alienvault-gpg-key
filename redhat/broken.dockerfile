FROM redhat/ubi8:latest

RUN yum update -y && \
    yum install -y yum-utils

RUN echo -n W2FsaWVudmF1bHQtYWdlbnQtcnBtXQpuYW1lPW5hbWU9QWxpZW5WYXVsdCBBZ2VudCBSUE0gUmVwbyAtICRiYXNlYXJjaApiYXNldXJsPWh0dHBzOi8vYWdlbnQtcGFja2FnZXNlcnZlci5hbGllbnZhdWx0LmNsb3VkL3JlcG8vcnBtLyRiYXNlYXJjaC8KZW5hYmxlZD0xCmdwZ2tleSA9IGZpbGU6Ly8vZXRjL3BraS9ycG0tZ3BnL1JQTS1HUEctS0VZLWFsaWVudmF1bHQtYWdlbnQKZ3BnY2hlY2s9MQo= | base64 -d > /tmp/alienvault-agent.repo && \
    echo -n LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tClZlcnNpb246IEdudVBHIHYxCgptUUlOQkZxWWVoMEJFQURpMGpyUUlTbWRjRFVWUGZDNjBpWlZRYTB6ZWV6TWtLay9YTTRVOFBqc1Y2Wlk0U2tpCkZpZmRFdG40bW1vMDhwSEI3MjFzZjZQaWNoKy9uWmkwNVN2NGlIb2YxaTBQVlZwRnVsM3dCZkZ6ZFNZcURFZVMKN2xWdnVIN1U1S2gwWGtaSFlXWTF3VGFmRE9EQjltc2JZN2tnNU9JUHk3QjNJN2ZQT083U2hyaEFiWVMvNjgyYwp4TUE1ZjdueFA5TEM1Y1hGakp6MllRaVVvZXhXbS9JTjlRZS9ORzNOak00d2VPQjAyQ2EwbW9pSldLK3diNWx2CjNLY2pKd1pVY3dRVmU1K3g0ZWlCckNWK3dtTUdVNW5JSXRHOGJITWtvcUZ3YUE2Y05UbC85YktMUk54eGdJclUKVGVsT0RCVDhBbENTZHJ2T2wvekEwUXZLYXJ3UDMybmpyMkxKWWE5RlBkcDUyeHJPWFBaTHV4WmxTaWhXa1JPQwpQS0Ryak9IM3N5Z2RZS3MvK2hncXNjZlY3N0pIcWsyZmVMdFJNanFjSFNtQnJhcEVaZzI2S3lwdkZQUWE4Y3pOCllwZHhobUlWZ2hzaUgzTnAxZTRTQitiTzMxdkl5Q2JndXJORWc2QkU3ZE8wSkxrYlFCTjVzQmE4a2R5UlhmckYKZ2ExV3NzTno2NVU4MTk1TkEwV0Q3dTE1bjJEVzVEUlNySEhaWEdKWkh0dll2UjBUQ2Iya3h5anBJcFR1ZzQrTApleTJyVEdrWlVta0RIeVgyUnZnZFdGSHpCbmRGUzJDcW1tOHBJaTdQaFEvLzlHa0paejZna0hMQ0RpOGdJekdjCkVnQ1ZndnNPbkNFV0tuZExiVGNVWU1hZCtlYUJrUjV5Ump2STVoNExIai94L3dwdWtTbzZIeGpYZXdBUkFRQUIKdENkQmJHbGxibFpoZFd4MExDQkpibU11SUR4aFoyVnVkRUJoYkdsbGJuWmhkV3gwTG1OdmJUNkpBajRFRXdFQwpBQ2dGQWxxWWVoMENHd01GQ1FsbUFZQUdDd2tJQndNQ0JoVUlBZ2tLQ3dRV0FnTUJBaDRCQWhlQUFBb0pFQzJpCkdvVVBpanhVcFdZUC9pQUZ4KzNtRUdxeU1BZ3h4Q2tlSFFsL0djTkhtV0xsYzNER29idDBDTStPNElQTzQ5YzQKZXYyN1VoUmdrOVl5YlJXcFUwTjBESjJaQzNUeWxvbXM4am5wUzVNcEdXaHl2ZnNJVGNWMHd4SlgybWFiUk0rOQpCODB0bjJDcjF1aVRTSGIwNS9qbUpXZWZlbTZQRDlCRXJaOFRlMU51Z2l4bjRvc2psdFNjUi9uclhpRFBPUm1VCjBkeWhPU3ZFdXpDVGdDalBBYSt3WFNoR2l1ajQ4bFFReitadlo3YkxUUEYzWW1DdzNQeiszd2ZlSkhOcVMxTlIKVHBydG5zeldZV05KTHpuMnM0d3VTc0VhRUd1bjZYV0dYa3FybmRNVnFXR08wYlhjZGc4SWxrT1plNzNzK1JiTgpiVkZNQUVuRU5wRE5hRlNxajZYTVlsK01JUzJ4QmU2M0ZLVXJkTWp4bUd3RDVXY3FuUXVYaGF0S2NEMnZEeEpsCk5yTFJKMU9nK29SamVYWEVBK3UyM3ZUVDZCRlBSMkU2emZudkRBYVMvTmtXWmgxRkY1VWFWYnp0d0hudkxTR00KU1RoM3FMb1pLcGZtY1pQQ1lkamsvdDdKRTdJaWV0R1Y2NDVJeVR6a3pCbEVCU1NVa1VBUUpzdGlYMzNqVkxubwp3MlAxRHJ4b1JHMHh0T0orTVFzQXpqZDlpaDNnUHFBeUlUcDdncTNwVWZXS054SEVobVA0OGdzQTBBT2VmbkhmCkoyUXRBKzBTT1N0RjNPYjI0T1VVSnpYaFo3aGpIUnROb2dMSWFpOG1jdjFOMCtOU280ZWlSNzBudmhGVk80WUsKVkdFR0k3ZnF0UTNUVkdwQnlQaFBha0pvSmRqOVo1c29qb3hDb0hqMHY0alppRTFNS1l5aVZLRUMKPUxmeE4KLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxPQ0stLS0tLQo= | base64 -d > /etc/pki/rpm-gpg/RPM-GPG-KEY-alienvault-agent && \
    yum-config-manager --add-repo /tmp/alienvault-agent.repo && rm -f /tmp/alienvault-agent.repo && \
    yum-config-manager --enable alienvault-agent-rpm

CMD [ "yum", "install", "-y", "alienvault-agent-20.08.0003.0301" ]