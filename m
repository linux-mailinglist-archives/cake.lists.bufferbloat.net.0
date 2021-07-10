Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 690273C3597
	for <lists+cake@lfdr.de>; Sat, 10 Jul 2021 19:00:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 219FF3CBCB;
	Sat, 10 Jul 2021 13:00:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625936453;
	bh=raEQqZQfBODDR3ZOBxrmXR1X5yn0mf4nm59gUewQFDg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p6g8K2oHFUSdIfH+vC8cv1QS+AcUwe9G/3URc2uKavoMWDRkP6eK6LH8Gtp37KkxQ
	 AwqWvsLAYdZml3kxbN1YCdLmjaGwRH7Te16/bW4LHUykqOz0RT2SDNL81f6b4dc7uz
	 qCXIzv8IeFUEYoCaNeh3CZAlHjoWe6g6J3e//3wAhcCEti6t1hTJuzu4X3oS3HAuji
	 zUHP+UuB4Y/xYGsWbJ6fJgf/NimlvOO9jR7YOn4qXEU/xnzm6hSRqaitRxbbMkEZ31
	 lUY/7upKDtMLk4+ho4z7cN3Jur5aKyZwhzWaUbUNj0xVruZBF5fg0me0QLR+RglChP
	 CS51IoFE2Op1A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0EDF93B29E
 for <cake@lists.bufferbloat.net>; Sat, 10 Jul 2021 13:00:51 -0400 (EDT)
Received: by mail-lf1-x131.google.com with SMTP id y42so30719037lfa.3
 for <cake@lists.bufferbloat.net>; Sat, 10 Jul 2021 10:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jackrabbitwireless.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R5s7DlJ6W+jcXEl6l93zkf6nyBB2D3403wkHkWOkecQ=;
 b=X+2kMnelZpLPKx+yUGgSxRCxUHFBlePpEUoAiGqTWgbmHXbSIRfpHr9dy9lJU2Kel8
 8XLEZzNZQ91DxBAnI/TllyxFnEKtzWyPSg4/yPQ9/LCNyEBsmvSC4ypaiRTjnUkfT89n
 hzqV6d3VI+0iqOT0FrOqeD4VyBhh5B7+s/+/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R5s7DlJ6W+jcXEl6l93zkf6nyBB2D3403wkHkWOkecQ=;
 b=IBe8HYDTr+OsAM7uTFPzUCVb+0HwM3LEWnlOZHt+eozp92fTc/PvtYiO9Lv26F64YE
 ADMAL+VlW3lmdk1+HRWbKy4V39ti9MSCIywBNzxLZY+lL0kNJz7yu/SIy88BX/kyc1ra
 /9cDpp+0Uvp7/MNLaQtw042oEH6k63ZoHSeveCYM0g0+p5wXmqn6RSaXYtdRNZK0MHmp
 fPIR7/kIEmxDHiRUvMvKlscetp/QP0ax6WkAo1F4vjxOJt5bbdr4e6e6hWtccfilUQsx
 2pH1x5FIMcEDOMVhlqjw2y5EVB5bY1d/+KykV4QHvTk1T3LJIK+l3Kimw/y5QbgGHvJ7
 PYbg==
X-Gm-Message-State: AOAM53128N7K50uM2n4QthuJOGlwtXPXnU6L4zIj1s0VYxj/n7WRi00e
 60EuhNpDK8U9nG1HWJngtFS3+er3P+zxnuf/zWVFWA==
X-Google-Smtp-Source: ABdhPJyIN00TqodFh+Yni70+A189InVvPmn5EIQ1gTMgsINwCS/gSFiN7yx453urkb2O3lySdkolxMADT1iERKfu2Jw=
X-Received: by 2002:a05:6512:159e:: with SMTP id
 bp30mr22381586lfb.263.1625936449254; 
 Sat, 10 Jul 2021 10:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <1625910047-56840-1-git-send-email-shenjian15@huawei.com>
 <CAA93jw4oWpoWkRk+YrzLfWX+0PpMHMJmALup6BLBczwLrjn-hA@mail.gmail.com>
In-Reply-To: <CAA93jw4oWpoWkRk+YrzLfWX+0PpMHMJmALup6BLBczwLrjn-hA@mail.gmail.com>
From: =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert.chacon@jackrabbitwireless.com>
Date: Sat, 10 Jul 2021 11:00:37 -0600
Message-ID: <CAOZyJouL=pM+GTTQ3AfEiwE6j5Jt3DFLMJYjasnJLBUszTd=tA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Fwd: [RFC net-next] net: extend netdev features
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6314900565531920525=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6314900565531920525==
Content-Type: multipart/alternative; boundary="0000000000007c51d805c6c7d4aa"

--0000000000007c51d805c6c7d4aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have a question regarding this, and the current maximum number of htb
leaf classes and/or qdiscs per interface.
I recently integrated Jesper's xdp-cpumap-tc
<https://github.com/xdp-project/xdp-cpumap-tc> code into LibreQoS
<https://github.com/rchac/LibreQoS>, which increased throughput to 10Gbps
on tests.
I suspect somewhere between 10Gbps and 40Gbps throughput is now possible if
you throw enough cores at it. Asking our local university to help us test
this.
Xdp-cpumap-tc uses xdp's cpumap-redirect feature to filter packets into the
appropriate CPU / queue using eBPF hash maps, rather than linux tc filters
/ u32.

Question) Since LibreQoS would not depend on tc filters, would the current
32-bit or 64-bit feature limit impose a practical client limit on LibreQoS?
The average user's throughput is around 3.5Mbps at peak hours, so I'm
thinking ~5800 qdiscs and ~5800 htb leaf classes would be required for each
interface at 20Gbps throughput for example.
There may be some more immediate limitations I'm not understanding. Just
curious about the practical limitations there.

Thanks!
Robert

On Sat, Jul 10, 2021 at 9:33 AM Dave Taht <dave.taht@gmail.com> wrote:
>
> One thing somewhat related to this was finally expanding the space
> available for the tc and iptables functionality for
> things like hashing and actions etc from 16 bits to 32. That is
> something of a fork lift upgrade, but... 64k queues is not
> enough in some cases, nor is 64k possible users in libreqos. thoughts
>
> ---------- Forwarded message ---------
> From: Jian Shen <shenjian15@huawei.com>
> Date: Sat, Jul 10, 2021 at 2:47 AM
> Subject: [RFC net-next] net: extend netdev features
> To: <davem@davemloft.net>, <kuba@kernel.org>
> Cc: <netdev@vger.kernel.org>, <linuxarm@openeuler.org>
>
>
> For the prototype of netdev_features_t is u64, and the number
> of netdevice feature bits is 64 now. So there is no space to
> introduce new feature bit.
>
> I did a small change for this. Keep the prototype of
> netdev_feature_t, and extend the feature members in struct
> net_device to an array of netdev_features_t. So more features
> bits can be used.
>
> As this change, some functions which use netdev_features_t as
> parameter or returen value will be affected.
> I did below changes:
> a. parameter: "netdev_features_t" to "netdev_features_t *"
> b. return value: "netdev_feature_t" to "void", and add
> "netdev_feature_t *" as output parameter.
>
> I kept some functions no change, which are surely useing the
> first 64 bit of net device features now, such as function
> nedev_add_tso_features(). In order to minimize to changes.
>
> For the features are array now, so it's unable to do logical
> operation directly. I introduce a inline function set for
> them, including "netdev_features_and/andnot/or/xor/equal/empty".
>
> For NETDEV_FEATURE_COUNT may be more than 64, so the shift
> operation for NETDEV_FEATURE_COUNT is illegal. I changed some
> macroes and functions, which does shift opertion with it.
>
> I haven't finished all the changes, for it affected all the
> drivers which use the feature, need more time and test. I
> sent this RFC patch, want to know whether this change is
> acceptable, and how to improve it.
>
> Any comments will be helpful.
>
> Signed-off-by: Jian Shen <shenjian15@huawei.com>
> ---
>  drivers/net/ethernet/hisilicon/hns/hns_enet.c   |  34 +--
>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c |  97 ++++-----
>  drivers/net/ethernet/huawei/hinic/hinic_main.c  |  71 +++---
>  drivers/net/ethernet/huawei/hinic/hinic_rx.c    |   4 +-
>  include/linux/if_vlan.h                         |   2 +-
>  include/linux/netdev_features.h                 | 105 ++++++++-
>  include/linux/netdevice.h                       |  31 +--
>  net/8021q/vlan.c                                |   4 +-
>  net/8021q/vlan.h                                |   2 +-
>  net/8021q/vlan_dev.c                            |  49 +++--
>  net/core/dev.c                                  | 276
++++++++++++------------
>  net/core/netpoll.c                              |   6 +-
>  net/ethtool/features.c                          |  56 +++--
>  net/ethtool/ioctl.c                             |  93 +++++---
>  14 files changed, 493 insertions(+), 337 deletions(-)
>
> diff --git a/drivers/net/ethernet/hisilicon/hns/hns_enet.c
> b/drivers/net/ethernet/hisilicon/hns/hns_enet.c
> index ad534f9..4f245cf 100644
> --- a/drivers/net/ethernet/hisilicon/hns/hns_enet.c
> +++ b/drivers/net/ethernet/hisilicon/hns/hns_enet.c
> @@ -479,7 +479,7 @@ static void hns_nic_rx_checksum(struct
> hns_nic_ring_data *ring_data,
>         u32 l4id;
>
>         /* check if RX checksum offload is enabled */
> -       if (unlikely(!(netdev->features & NETIF_F_RXCSUM)))
> +       if (unlikely(!(netdev->features[0] & NETIF_F_RXCSUM)))
>                 return;
>
>         /* In hardware, we only support checksum for the following
protocols:
> @@ -1768,17 +1768,17 @@ static int hns_nic_change_mtu(struct
> net_device *ndev, int new_mtu)
>  }
>
>  static int hns_nic_set_features(struct net_device *netdev,
> -                               netdev_features_t features)
> +                               netdev_features_t *features)
>  {
>         struct hns_nic_priv *priv =3D netdev_priv(netdev);
>
>         switch (priv->enet_ver) {
>         case AE_VERSION_1:
> -               if (features & (NETIF_F_TSO | NETIF_F_TSO6))
> +               if (features[0] & (NETIF_F_TSO | NETIF_F_TSO6))
>                         netdev_info(netdev, "enet v1 do not support
tso!\n");
>                 break;
>         default:
> -               if (features & (NETIF_F_TSO | NETIF_F_TSO6)) {
> +               if (features[0] & (NETIF_F_TSO | NETIF_F_TSO6)) {
>                         priv->ops.fill_desc =3D fill_tso_desc;
>                         priv->ops.maybe_stop_tx =3D hns_nic_maybe_stop_ts=
o;
>                         /* The chip only support 7*4096 */
> @@ -1789,24 +1789,23 @@ static int hns_nic_set_features(struct
> net_device *netdev,
>                 }
>                 break;
>         }
> -       netdev->features =3D features;
> +       netdev->features[0] =3D features[0];
>         return 0;
>  }
>
> -static netdev_features_t hns_nic_fix_features(
> -               struct net_device *netdev, netdev_features_t features)
> +static void hns_nic_fix_features(struct net_device *netdev,
> +                                netdev_features_t *features)
>  {
>         struct hns_nic_priv *priv =3D netdev_priv(netdev);
>
>         switch (priv->enet_ver) {
>         case AE_VERSION_1:
> -               features &=3D ~(NETIF_F_TSO | NETIF_F_TSO6 |
> +               features[0] &=3D ~(NETIF_F_TSO | NETIF_F_TSO6 |
>                                 NETIF_F_HW_VLAN_CTAG_FILTER);
>                 break;
>         default:
>                 break;
>         }
> -       return features;
>  }
>
>  static int hns_nic_uc_sync(struct net_device *netdev, const unsigned
> char *addr)
> @@ -2163,8 +2162,8 @@ static void hns_nic_set_priv_ops(struct
> net_device *netdev)
>                 priv->ops.maybe_stop_tx =3D hns_nic_maybe_stop_tx;
>         } else {
>                 priv->ops.get_rxd_bnum =3D get_v2rx_desc_bnum;
> -               if ((netdev->features & NETIF_F_TSO) ||
> -                   (netdev->features & NETIF_F_TSO6)) {
> +               if ((netdev->features[0] & NETIF_F_TSO) ||
> +                   (netdev->features[0] & NETIF_F_TSO6)) {
>                         priv->ops.fill_desc =3D fill_tso_desc;
>                         priv->ops.maybe_stop_tx =3D hns_nic_maybe_stop_ts=
o;
>                         /* This chip only support 7*4096 */
> @@ -2325,22 +2324,23 @@ static int hns_nic_dev_probe(struct
> platform_device *pdev)
>         ndev->netdev_ops =3D &hns_nic_netdev_ops;
>         hns_ethtool_set_ops(ndev);
>
> -       ndev->features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
> +       ndev->features[0] |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
>                 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |
>                 NETIF_F_GRO;
> -       ndev->vlan_features |=3D
> +       ndev->vlan_features[0] |=3D
>                 NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_RXCSUM;
> -       ndev->vlan_features |=3D NETIF_F_SG | NETIF_F_GSO | NETIF_F_GRO;
> +       ndev->vlan_features[0] |=3D NETIF_F_SG | NETIF_F_GSO | NETIF_F_GR=
O;
>
>         /* MTU range: 68 - 9578 (v1) or 9706 (v2) */
>         ndev->min_mtu =3D MAC_MIN_MTU;
>         switch (priv->enet_ver) {
>         case AE_VERSION_2:
> -               ndev->features |=3D NETIF_F_TSO | NETIF_F_TSO6 |
NETIF_F_NTUPLE;
> -               ndev->hw_features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSU=
M |
> +               ndev->features[0] |=3D
> +                               NETIF_F_TSO | NETIF_F_TSO6 |
NETIF_F_NTUPLE;
> +               ndev->hw_features[0] |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM |
>                         NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |
>                         NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6;
> -               ndev->vlan_features |=3D NETIF_F_TSO | NETIF_F_TSO6;
> +               ndev->vlan_features[0] |=3D NETIF_F_TSO | NETIF_F_TSO6;
>                 ndev->max_mtu =3D MAC_MAX_MTU_V2 -
>                                 (ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN);
>                 break;
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> index cdb5f14..ba56907 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> @@ -1481,7 +1481,7 @@ static int hns3_handle_vtags(struct
> hns3_enet_ring *tx_ring,
>                 return -EINVAL;
>
>         if (skb->protocol =3D=3D htons(ETH_P_8021Q) &&
> -           !(handle->kinfo.netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) =
{
> +           !(handle->kinfo.netdev->features[0] &
NETIF_F_HW_VLAN_CTAG_TX)) {
>                 /* When HW VLAN acceleration is turned off, and the stack
>                  * sets the protocol to 802.1q, the driver just need to
>                  * set the protocol to the encapsulated ethertype.
> @@ -2300,56 +2300,57 @@ static int hns3_nic_do_ioctl(struct net_device
*netdev,
>  }
>
>  static int hns3_nic_set_features(struct net_device *netdev,
> -                                netdev_features_t features)
> +                                netdev_features_t *features)
>  {
> -       netdev_features_t changed =3D netdev->features ^ features;
> +       netdev_features_t changed[NETDEV_FEATURE_DWORDS];
>         struct hns3_nic_priv *priv =3D netdev_priv(netdev);
>         struct hnae3_handle *h =3D priv->ae_handle;
>         bool enable;
>         int ret;
>
> -       if (changed & (NETIF_F_GRO_HW) && h->ae_algo->ops->set_gro_en) {
> -               enable =3D !!(features & NETIF_F_GRO_HW);
> +       netdev_features_xor(changed, netdev->features, features);
> +       if (changed[0] & (NETIF_F_GRO_HW) && h->ae_algo->ops->set_gro_en)
{
> +               enable =3D !!(features[0] & NETIF_F_GRO_HW);
>                 ret =3D h->ae_algo->ops->set_gro_en(h, enable);
>                 if (ret)
>                         return ret;
>         }
>
> -       if ((changed & NETIF_F_HW_VLAN_CTAG_RX) &&
> +       if ((changed[0] & NETIF_F_HW_VLAN_CTAG_RX) &&
>             h->ae_algo->ops->enable_hw_strip_rxvtag) {
> -               enable =3D !!(features & NETIF_F_HW_VLAN_CTAG_RX);
> +               enable =3D !!(features[0] & NETIF_F_HW_VLAN_CTAG_RX);
>                 ret =3D h->ae_algo->ops->enable_hw_strip_rxvtag(h, enable=
);
>                 if (ret)
>                         return ret;
>         }
>
> -       if ((changed & NETIF_F_NTUPLE) && h->ae_algo->ops->enable_fd) {
> -               enable =3D !!(features & NETIF_F_NTUPLE);
> +       if ((changed[0] & NETIF_F_NTUPLE) && h->ae_algo->ops->enable_fd) =
{
> +               enable =3D !!(features[0] & NETIF_F_NTUPLE);
>                 h->ae_algo->ops->enable_fd(h, enable);
>         }
>
> -       if ((netdev->features & NETIF_F_HW_TC) > (features &
NETIF_F_HW_TC) &&
> +       if ((netdev->features[0] & NETIF_F_HW_TC) >
> +            (features[0] & NETIF_F_HW_TC) &&
>             h->ae_algo->ops->cls_flower_active(h)) {
>                 netdev_err(netdev,
>                            "there are offloaded TC filters active,
> cannot disable HW TC offload");
>                 return -EINVAL;
>         }
>
> -       if ((changed & NETIF_F_HW_VLAN_CTAG_FILTER) &&
> +       if ((changed[0] & NETIF_F_HW_VLAN_CTAG_FILTER) &&
>             h->ae_algo->ops->enable_vlan_filter) {
> -               enable =3D !!(features & NETIF_F_HW_VLAN_CTAG_FILTER);
> +               enable =3D !!(features[0] & NETIF_F_HW_VLAN_CTAG_FILTER);
>                 ret =3D h->ae_algo->ops->enable_vlan_filter(h, enable);
>                 if (ret)
>                         return ret;
>         }
>
> -       netdev->features =3D features;
> +       netdev_features_copy(netdev->features, features);
>         return 0;
>  }
>
> -static netdev_features_t hns3_features_check(struct sk_buff *skb,
> -                                            struct net_device *dev,
> -                                            netdev_features_t features)
> +static void hns3_features_check(struct sk_buff *skb, struct net_device
*dev,
> +                               netdev_features_t *features)
>  {
>  #define HNS3_MAX_HDR_LEN       480U
>  #define HNS3_MAX_L4_HDR_LEN    60U
> @@ -2373,9 +2374,7 @@ static netdev_features_t
> hns3_features_check(struct sk_buff *skb,
>          * len of 480 bytes.
>          */
>         if (len > HNS3_MAX_HDR_LEN)
> -               features &=3D ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
> -
> -       return features;
> +               features[0] &=3D ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
>  }
>
>  static void hns3_nic_get_stats64(struct net_device *netdev,
> @@ -3127,27 +3126,28 @@ static void hns3_set_default_feature(struct
> net_device *netdev)
>
>         netdev->priv_flags |=3D IFF_UNICAST_FLT;
>
> -       netdev->hw_enc_features |=3D NETIF_F_RXCSUM | NETIF_F_SG |
NETIF_F_GSO |
> +       netdev->hw_enc_features[0] |=3D
> +               NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |
>                 NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6 |
NETIF_F_GSO_GRE |
>                 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNNEL |
>                 NETIF_F_SCTP_CRC | NETIF_F_TSO_MANGLEID |
NETIF_F_FRAGLIST;
>
>         netdev->gso_partial_features |=3D NETIF_F_GSO_GRE_CSUM;
>
> -       netdev->features |=3D NETIF_F_HW_VLAN_CTAG_FILTER |
> +       netdev->features[0] |=3D NETIF_F_HW_VLAN_CTAG_FILTER |
>                 NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX |
>                 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |
>                 NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6 |
NETIF_F_GSO_GRE |
>                 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNNEL |
>                 NETIF_F_SCTP_CRC | NETIF_F_FRAGLIST;
>
> -       netdev->vlan_features |=3D NETIF_F_RXCSUM |
> +       netdev->vlan_features[0] |=3D NETIF_F_RXCSUM |
>                 NETIF_F_SG | NETIF_F_GSO | NETIF_F_GRO |
>                 NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_GSO_GRE |
>                 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNNEL |
>                 NETIF_F_SCTP_CRC | NETIF_F_FRAGLIST;
>
> -       netdev->hw_features |=3D NETIF_F_HW_VLAN_CTAG_TX |
> +       netdev->hw_features[0] |=3D NETIF_F_HW_VLAN_CTAG_TX |
>                 NETIF_F_HW_VLAN_CTAG_RX |
>                 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |
>                 NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6 |
NETIF_F_GSO_GRE |
> @@ -3155,48 +3155,49 @@ static void hns3_set_default_feature(struct
> net_device *netdev)
>                 NETIF_F_SCTP_CRC | NETIF_F_FRAGLIST;
>
>         if (ae_dev->dev_version >=3D HNAE3_DEVICE_VERSION_V2) {
> -               netdev->hw_features |=3D NETIF_F_GRO_HW;
> -               netdev->features |=3D NETIF_F_GRO_HW;
> +               netdev->hw_features[0] |=3D NETIF_F_GRO_HW;
> +               netdev->features[0] |=3D NETIF_F_GRO_HW;
>
>                 if (!(h->flags & HNAE3_SUPPORT_VF)) {
> -                       netdev->hw_features |=3D NETIF_F_NTUPLE;
> -                       netdev->features |=3D NETIF_F_NTUPLE;
> +                       netdev->hw_features[0] |=3D NETIF_F_NTUPLE;
> +                       netdev->features[0] |=3D NETIF_F_NTUPLE;
>                 }
>         }
>
>         if (test_bit(HNAE3_DEV_SUPPORT_UDP_GSO_B, ae_dev->caps)) {
> -               netdev->hw_features |=3D NETIF_F_GSO_UDP_L4;
> -               netdev->features |=3D NETIF_F_GSO_UDP_L4;
> -               netdev->vlan_features |=3D NETIF_F_GSO_UDP_L4;
> -               netdev->hw_enc_features |=3D NETIF_F_GSO_UDP_L4;
> +               netdev->hw_features[0] |=3D NETIF_F_GSO_UDP_L4;
> +               netdev->features[0] |=3D NETIF_F_GSO_UDP_L4;
> +               netdev->vlan_features[0] |=3D NETIF_F_GSO_UDP_L4;
> +               netdev->hw_enc_features[0] |=3D NETIF_F_GSO_UDP_L4;
>         }
>
>         if (test_bit(HNAE3_DEV_SUPPORT_HW_TX_CSUM_B, ae_dev->caps)) {
> -               netdev->hw_features |=3D NETIF_F_HW_CSUM;
> -               netdev->features |=3D NETIF_F_HW_CSUM;
> -               netdev->vlan_features |=3D NETIF_F_HW_CSUM;
> -               netdev->hw_enc_features |=3D NETIF_F_HW_CSUM;
> +               netdev->hw_features[0] |=3D NETIF_F_HW_CSUM;
> +               netdev->features[0] |=3D NETIF_F_HW_CSUM;
> +               netdev->vlan_features[0] |=3D NETIF_F_HW_CSUM;
> +               netdev->hw_enc_features[0] |=3D NETIF_F_HW_CSUM;
>         } else {
> -               netdev->hw_features |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> -               netdev->features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM=
;
> -               netdev->vlan_features |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> -               netdev->hw_enc_features |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> +               netdev->hw_features[0] |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> +               netdev->features[0] |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> +               netdev->vlan_features[0] |=3D NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
> +               netdev->hw_enc_features[0] |=3D
> +                                       NETIF_F_IP_CSUM |
NETIF_F_IPV6_CSUM;
>         }
>
>         if (test_bit(HNAE3_DEV_SUPPORT_UDP_TUNNEL_CSUM_B, ae_dev->caps)) =
{
> -               netdev->hw_features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> -               netdev->features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> -               netdev->vlan_features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> -               netdev->hw_enc_features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> +               netdev->hw_features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> +               netdev->features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;
> +               netdev->vlan_features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM=
;
> +               netdev->hw_enc_features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CS=
UM;
>         }
>
>         if (test_bit(HNAE3_DEV_SUPPORT_FD_FORWARD_TC_B, ae_dev->caps)) {
> -               netdev->hw_features |=3D NETIF_F_HW_TC;
> -               netdev->features |=3D NETIF_F_HW_TC;
> +               netdev->hw_features[0] |=3D NETIF_F_HW_TC;
> +               netdev->features[0] |=3D NETIF_F_HW_TC;
>         }
>
>         if (test_bit(HNAE3_DEV_SUPPORT_VLAN_FLTR_MDF_B, ae_dev->caps))
> -               netdev->hw_features |=3D NETIF_F_HW_VLAN_CTAG_FILTER;
> +               netdev->hw_features[0] |=3D NETIF_F_HW_VLAN_CTAG_FILTER;
>  }
>
>  static int hns3_alloc_buffer(struct hns3_enet_ring *ring,
> @@ -3727,7 +3728,7 @@ static void hns3_rx_checksum(struct
> hns3_enet_ring *ring, struct sk_buff *skb,
>
>         skb_checksum_none_assert(skb);
>
> -       if (!(netdev->features & NETIF_F_RXCSUM))
> +       if (!(netdev->features[0] & NETIF_F_RXCSUM))
>                 return;
>
>         if (test_bit(HNS3_NIC_STATE_RXD_ADV_LAYOUT_ENABLE, &priv->state))
> @@ -4024,7 +4025,7 @@ static int hns3_handle_bdinfo(struct
> hns3_enet_ring *ring, struct sk_buff *skb)
>          * ot_vlan_tag in two layer tag case, and stored at vlan_tag
>          * in one layer tag case.
>          */
> -       if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX) {
> +       if (netdev->features[0] & NETIF_F_HW_VLAN_CTAG_RX) {
>                 u16 vlan_tag;
>
>                 if (hns3_parse_vlan_tag(ring, desc, l234info, &vlan_tag))
> diff --git a/drivers/net/ethernet/huawei/hinic/hinic_main.c
> b/drivers/net/ethernet/huawei/hinic/hinic_main.c
> index 405ee4d..b193ee4 100644
> --- a/drivers/net/ethernet/huawei/hinic/hinic_main.c
> +++ b/drivers/net/ethernet/huawei/hinic/hinic_main.c
> @@ -79,8 +79,8 @@ MODULE_PARM_DESC(rx_weight, "Number Rx packets for
> NAPI budget (default=3D64)");
>  static int change_mac_addr(struct net_device *netdev, const u8 *addr);
>
>  static int set_features(struct hinic_dev *nic_dev,
> -                       netdev_features_t pre_features,
> -                       netdev_features_t features, bool force_change);
> +                       netdev_features_t *pre_features,
> +                       netdev_features_t *features, bool force_change);
>
>  static void update_rx_stats(struct hinic_dev *nic_dev, struct hinic_rxq
*rxq)
>  {
> @@ -880,7 +880,7 @@ static void hinic_get_stats64(struct net_device
*netdev,
>  }
>
>  static int hinic_set_features(struct net_device *netdev,
> -                             netdev_features_t features)
> +                             netdev_features_t *features)
>  {
>         struct hinic_dev *nic_dev =3D netdev_priv(netdev);
>
> @@ -888,18 +888,16 @@ static int hinic_set_features(struct net_device
*netdev,
>                             features, false);
>  }
>
> -static netdev_features_t hinic_fix_features(struct net_device *netdev,
> -                                           netdev_features_t features)
> +static void hinic_fix_features(struct net_device *netdev,
> +                              netdev_features_t features)
>  {
>         struct hinic_dev *nic_dev =3D netdev_priv(netdev);
>
>         /* If Rx checksum is disabled, then LRO should also be disabled *=
/
> -       if (!(features & NETIF_F_RXCSUM)) {
> +       if (!(features[0] & NETIF_F_RXCSUM)) {
>                 netif_info(nic_dev, drv, netdev, "disabling LRO as
> RXCSUM is off\n");
> -               features &=3D ~NETIF_F_LRO;
> +               features[0] &=3D ~NETIF_F_LRO;
>         }
> -
> -       return features;
>  }
>
>  static const struct net_device_ops hinic_netdev_ops =3D {
> @@ -943,19 +941,22 @@ static const struct net_device_ops
hinicvf_netdev_ops =3D {
>
>  static void netdev_features_init(struct net_device *netdev)
>  {
> -       netdev->hw_features =3D NETIF_F_SG | NETIF_F_HIGHDMA |
NETIF_F_IP_CSUM |
> -                             NETIF_F_IPV6_CSUM | NETIF_F_TSO |
NETIF_F_TSO6 |
> -                             NETIF_F_RXCSUM | NETIF_F_LRO |
> -                             NETIF_F_HW_VLAN_CTAG_TX |
> NETIF_F_HW_VLAN_CTAG_RX |
> -                             NETIF_F_GSO_UDP_TUNNEL |
> NETIF_F_GSO_UDP_TUNNEL_CSUM;
> -
> -       netdev->vlan_features =3D netdev->hw_features;
> -
> -       netdev->features =3D netdev->hw_features |
NETIF_F_HW_VLAN_CTAG_FILTER;
> -
> -       netdev->hw_enc_features =3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM
> | NETIF_F_SCTP_CRC |
> -                                 NETIF_F_SG | NETIF_F_TSO |
> NETIF_F_TSO6 | NETIF_F_TSO_ECN |
> -                                 NETIF_F_GSO_UDP_TUNNEL_CSUM |
> NETIF_F_GSO_UDP_TUNNEL;
> +       netdev->hw_features[0] =3D
> +                       NETIF_F_SG | NETIF_F_HIGHDMA | NETIF_F_IP_CSUM |
> +                       NETIF_F_IPV6_CSUM | NETIF_F_TSO | NETIF_F_TSO6 |
> +                       NETIF_F_RXCSUM | NETIF_F_LRO |
> +                       NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX
|
> +                       NETIF_F_GSO_UDP_TUNNEL |
NETIF_F_GSO_UDP_TUNNEL_CSUM;
> +
> +       netdev_features_copy(netdev->vlan_features, netdev->hw_features);
> +
> +       netdev->features[0] =3D
> +                       netdev->hw_features[0] |
NETIF_F_HW_VLAN_CTAG_FILTER;
> +
> +       netdev->hw_enc_features[0] =3D
> +               NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_SCTP_CRC |
> +               NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_TSO_ECN
|
> +               NETIF_F_GSO_UDP_TUNNEL_CSUM | NETIF_F_GSO_UDP_TUNNEL;
>  }
>
>  static void hinic_refresh_nic_cfg(struct hinic_dev *nic_dev)
> @@ -1072,21 +1073,22 @@ static void link_err_event(void *handle,
>  }
>
>  static int set_features(struct hinic_dev *nic_dev,
> -                       netdev_features_t pre_features,
> -                       netdev_features_t features, bool force_change)
> +                       netdev_features_t *pre_features,
> +                       netdev_features_t *features, bool force_change)
>  {
> -       netdev_features_t changed =3D force_change ? ~0 : pre_features ^
features;
> +       netdev_features_t failed_features[NETDEV_FEATURE_DWORDS] =3D {0};
>         u32 csum_en =3D HINIC_RX_CSUM_OFFLOAD_EN;
> -       netdev_features_t failed_features =3D 0;
> +       netdev_features_t changed;
>         int ret =3D 0;
>         int err =3D 0;
>
> +       changed =3D force_change ? ~0 : pre_features[0] ^ features[0];
>         if (changed & NETIF_F_TSO) {
> -               ret =3D hinic_port_set_tso(nic_dev, (features &
NETIF_F_TSO) ?
> +               ret =3D hinic_port_set_tso(nic_dev, (features[0] &
NETIF_F_TSO) ?
>                                          HINIC_TSO_ENABLE :
HINIC_TSO_DISABLE);
>                 if (ret) {
>                         err =3D ret;
> -                       failed_features |=3D NETIF_F_TSO;
> +                       failed_features[0] |=3D NETIF_F_TSO;
>                 }
>         }
>
> @@ -1094,33 +1096,34 @@ static int set_features(struct hinic_dev *nic_dev=
,
>                 ret =3D hinic_set_rx_csum_offload(nic_dev, csum_en);
>                 if (ret) {
>                         err =3D ret;
> -                       failed_features |=3D NETIF_F_RXCSUM;
> +                       failed_features[0] |=3D NETIF_F_RXCSUM;
>                 }
>         }
>
>         if (changed & NETIF_F_LRO) {
>                 ret =3D hinic_set_rx_lro_state(nic_dev,
> -                                            !!(features & NETIF_F_LRO),
> +                                            !!(features[0] &
NETIF_F_LRO),
>                                              HINIC_LRO_RX_TIMER_DEFAULT,
>
 HINIC_LRO_MAX_WQE_NUM_DEFAULT);
>                 if (ret) {
>                         err =3D ret;
> -                       failed_features |=3D NETIF_F_LRO;
> +                       failed_features[0] |=3D NETIF_F_LRO;
>                 }
>         }
>
>         if (changed & NETIF_F_HW_VLAN_CTAG_RX) {
>                 ret =3D hinic_set_rx_vlan_offload(nic_dev,
> -                                               !!(features &
> +                                               !!(features[0] &
>
 NETIF_F_HW_VLAN_CTAG_RX));
>                 if (ret) {
>                         err =3D ret;
> -                       failed_features |=3D NETIF_F_HW_VLAN_CTAG_RX;
> +                       failed_features[0] |=3D NETIF_F_HW_VLAN_CTAG_RX;
>                 }
>         }
>
>         if (err) {
> -               nic_dev->netdev->features =3D features ^ failed_features;
> +               netdev_features_xor(nic_dev->netdev->features, features,
> +                                   failed_features)
>                 return -EIO;
>         }
>
> diff --git a/drivers/net/ethernet/huawei/hinic/hinic_rx.c
> b/drivers/net/ethernet/huawei/hinic/hinic_rx.c
> index fed3b6b..452a91b 100644
> --- a/drivers/net/ethernet/huawei/hinic/hinic_rx.c
> +++ b/drivers/net/ethernet/huawei/hinic/hinic_rx.c
> @@ -106,7 +106,7 @@ static void rx_csum(struct hinic_rxq *rxq, u32 status=
,
>
>         csum_err =3D HINIC_RQ_CQE_STATUS_GET(status, CSUM_ERR);
>
> -       if (!(netdev->features & NETIF_F_RXCSUM))
> +       if (!(netdev->features[0] & NETIF_F_RXCSUM))
>                 return;
>
>         if (!csum_err) {
> @@ -411,7 +411,7 @@ static int rxq_recv(struct hinic_rxq *rxq, int budget=
)
>
>                 offload_type =3D be32_to_cpu(cqe->offload_type);
>                 vlan_len =3D be32_to_cpu(cqe->len);
> -               if ((netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
> +               if ((netdev->features[0] & NETIF_F_HW_VLAN_CTAG_RX) &&
>                     HINIC_GET_RX_VLAN_OFFLOAD_EN(offload_type)) {
>                         vid =3D HINIC_GET_RX_VLAN_TAG(vlan_len);
>                         __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
vid);
> diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
> index 41a5183..4173464 100644
> --- a/include/linux/if_vlan.h
> +++ b/include/linux/if_vlan.h
> @@ -563,7 +563,7 @@ static inline int __vlan_hwaccel_get_tag(const
> struct sk_buff *skb,
>   */
>  static inline int vlan_get_tag(const struct sk_buff *skb, u16 *vlan_tci)
>  {
> -       if (skb->dev->features & NETIF_F_HW_VLAN_CTAG_TX) {
> +       if (skb->dev->features[0] & NETIF_F_HW_VLAN_CTAG_TX) {
>                 return __vlan_hwaccel_get_tag(skb, vlan_tci);
>         } else {
>                 return __vlan_get_tag(skb, vlan_tci);
> diff --git a/include/linux/netdev_features.h
b/include/linux/netdev_features.h
> index 2c6b9e4..9184963 100644
> --- a/include/linux/netdev_features.h
> +++ b/include/linux/netdev_features.h
> @@ -102,7 +102,8 @@ enum {
>  };
>
>  /* copy'n'paste compression ;) */
> -#define __NETIF_F_BIT(bit)     ((netdev_features_t)1 << (bit))
> +#define __NETIF_F_BIT(bit)     ((netdev_features_t)1 << (bit & 0x3F))
> +
>  #define __NETIF_F(name)
 __NETIF_F_BIT(NETIF_F_##name##_BIT)
>
>  #define NETIF_F_FCOE_CRC       __NETIF_F(FCOE_CRC)
> @@ -169,6 +170,8 @@ enum {
>  #define NETIF_F_HW_HSR_FWD     __NETIF_F(HW_HSR_FWD)
>  #define NETIF_F_HW_HSR_DUP     __NETIF_F(HW_HSR_DUP)
>
> +#define NETDEV_FEATURE_DWORDS  DIV_ROUND_UP(NETDEV_FEATURE_COUNT, 64)
> +
>  /* Finds the next feature with the highest number of the range of start
till 0.
>   */
>  static inline int find_next_netdev_feature(u64 feature, unsigned long
start)
> @@ -185,8 +188,7 @@ static inline int find_next_netdev_feature(u64
> feature, unsigned long start)
>   * mask_addr should be a u64 and bit an int
>   */
>  #define for_each_netdev_feature(mask_addr, bit)
>          \
> -       for ((bit) =3D find_next_netdev_feature((mask_addr),             =
 \
> -                                             NETDEV_FEATURE_COUNT);    \
> +       for ((bit) =3D find_next_netdev_feature((mask_addr), 64);        =
 \
>              (bit) >=3D 0;                                               =
 \
>              (bit) =3D find_next_netdev_feature((mask_addr), (bit) - 1))
>
> @@ -195,11 +197,6 @@ static inline int find_next_netdev_feature(u64
> feature, unsigned long start)
>  #define NETIF_F_NEVER_CHANGE   (NETIF_F_VLAN_CHALLENGED | \
>                                  NETIF_F_LLTX | NETIF_F_NETNS_LOCAL)
>
> -/* remember that ((t)1 << t_BITS) is undefined in C99 */
> -#define NETIF_F_ETHTOOL_BITS   ((__NETIF_F_BIT(NETDEV_FEATURE_COUNT - 1)
| \
> -               (__NETIF_F_BIT(NETDEV_FEATURE_COUNT - 1) - 1)) & \
> -               ~NETIF_F_NEVER_CHANGE)
> -
>  /* Segmentation offload feature mask */
>  #define NETIF_F_GSO_MASK       (__NETIF_F_BIT(NETIF_F_GSO_LAST + 1) - \
>                 __NETIF_F_BIT(NETIF_F_GSO_SHIFT))
> @@ -261,4 +258,96 @@ static inline int find_next_netdev_feature(u64
> feature, unsigned long start)
>                                  NETIF_F_GSO_UDP_TUNNEL |               \
>                                  NETIF_F_GSO_UDP_TUNNEL_CSUM)
>
> +static inline void netdev_features_copy(netdev_features_t *dst,
> +                                       const netdev_features_t *src)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               dst[i] =3D src[i];
> +}
> +
> +static inline void netdev_features_and(netdev_features_t *dst,
> +                                      const netdev_features_t *a,
> +                                      const netdev_features_t *b)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               dst[i] =3D a[i] & b[i];
> +}
> +
> +static inline void netdev_features_andnot(netdev_features_t *dst,
> +                                         const netdev_features_t *a,
> +                                         const netdev_features_t *b)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               dst[i] =3D a[i] & ~b[i];
> +}
> +
> +static inline void netdev_features_or(netdev_features_t *dst,
> +                                     const netdev_features_t *a,
> +                                     const netdev_features_t *b)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               dst[i] =3D a[i] | b[i];
> +}
> +
> +static inline void netdev_features_xor(netdev_features_t *dst,
> +                                      const netdev_features_t *a,
> +                                      const netdev_features_t *b)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               dst[i] =3D a[i] ^ b[i];
> +}
> +
> +static inline void netdev_features_set(netdev_features_t *dst,
> +                                      unsigned int bit)
> +{
> +       dst[bit / 64] |=3D __NETIF_F_BIT(bit);
> +}
> +
> +static inline bool netdev_features_equal(const netdev_features_t *a,
> +                                        const netdev_features_t *b)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               if (a[i] !=3D b[i])
> +                       return false;
> +
> +       return true;
> +}
> +
> +static inline void netdev_features_empty(netdev_features_t *src)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               if (src[i])
> +                       return false;
> +
> +       return true;
> +}
> +
> +static inline void netdev_features_ethtool_bits(netdev_features_t *dst)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++) {
> +               if (NETDEV_FEATURE_COUNT >=3D (i + 1) * 64)
> +                       dst[i] =3D GENMASK_ULL(63, 0);
> +               else
> +                       dst[i] =3D GENMASK_ULL(NETDEV_FEATURE_COUNT - i *
64,
> +                                                 0);
> +       }
> +       dst[0] &=3D ~NETIF_F_NEVER_CHANGE;
> +}
> +
>  #endif /* _LINUX_NETDEV_FEATURES_H */
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index eaf5bb0..4a29487 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1347,9 +1347,9 @@ struct net_device_ops {
>         int                     (*ndo_stop)(struct net_device *dev);
>         netdev_tx_t             (*ndo_start_xmit)(struct sk_buff *skb,
>                                                   struct net_device *dev)=
;
> -       netdev_features_t       (*ndo_features_check)(struct sk_buff *skb=
,
> +       void                    (*ndo_features_check)(struct sk_buff *skb=
,
>                                                       struct net_device
*dev,
> -
> netdev_features_t features);
> +
> netdev_features_t *features);
>         u16                     (*ndo_select_queue)(struct net_device
*dev,
>                                                     struct sk_buff *skb,
>                                                     struct net_device
*sb_dev);
> @@ -1467,10 +1467,10 @@ struct net_device_ops {
>                                                       bool all_slaves);
>         struct net_device*      (*ndo_sk_get_lower_dev)(struct net_device
*dev,
>                                                         struct sock *sk);
> -       netdev_features_t       (*ndo_fix_features)(struct net_device
*dev,
> -                                                   netdev_features_t
features);
> +       void                    (*ndo_fix_features)(struct net_device
*dev,
> +                                                   netdev_features_t
> *features);
>         int                     (*ndo_set_features)(struct net_device
*dev,
> -                                                   netdev_features_t
features);
> +                                                   netdev_features_t
> *features);
>         int                     (*ndo_neigh_construct)(struct net_device
*dev,
>                                                        struct neighbour
*n);
>         void                    (*ndo_neigh_destroy)(struct net_device
*dev,
> @@ -1978,12 +1978,12 @@ struct net_device {
>         unsigned short          needed_headroom;
>         unsigned short          needed_tailroom;
>
> -       netdev_features_t       features;
> -       netdev_features_t       hw_features;
> -       netdev_features_t       wanted_features;
> -       netdev_features_t       vlan_features;
> -       netdev_features_t       hw_enc_features;
> -       netdev_features_t       mpls_features;
> +       netdev_features_t       features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t       hw_features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t       wanted_features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t       vlan_features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t       hw_enc_features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t       mpls_features[NETDEV_FEATURE_DWORDS];
>         netdev_features_t       gso_partial_features;
>
>         unsigned int            min_mtu;
> @@ -4986,10 +4986,11 @@ static inline netdev_features_t
> netdev_intersect_features(netdev_features_t f1,
>         return f1 & f2;
>  }
>
> -static inline netdev_features_t netdev_get_wanted_features(
> -       struct net_device *dev)
> +static inline void netdev_get_wanted_features(struct net_device *dev,
> +                                             netdev_features_t *wanted)
>  {
> -       return (dev->features & ~dev->hw_features) | dev->wanted_features=
;
> +       netdev_features_andnot(wanted, dev->features, dev->hw_features);
> +       netdev_features_or(wanted, wanted, dev->wanted_features);
>  }
>  netdev_features_t netdev_increment_features(netdev_features_t all,
>         netdev_features_t one, netdev_features_t mask);
> @@ -5014,7 +5015,7 @@ void netif_stacked_transfer_operstate(const
> struct net_device *rootdev,
>  netdev_features_t passthru_features_check(struct sk_buff *skb,
>                                           struct net_device *dev,
>                                           netdev_features_t features);
> -netdev_features_t netif_skb_features(struct sk_buff *skb);
> +void netif_skb_features(struct sk_buff *skb, netdev_features_t
*features);
>
>  static inline bool net_gso_ok(netdev_features_t features, int gso_type)
>  {
> diff --git a/net/8021q/vlan.c b/net/8021q/vlan.c
> index 4cdf841..7d77692 100644
> --- a/net/8021q/vlan.c
> +++ b/net/8021q/vlan.c
> @@ -328,7 +328,7 @@ static void vlan_transfer_features(struct net_device
*dev,
>         vlandev->gso_max_size =3D dev->gso_max_size;
>         vlandev->gso_max_segs =3D dev->gso_max_segs;
>
> -       if (vlan_hw_offload_capable(dev->features, vlan->vlan_proto))
> +       if (vlan_hw_offload_capable(dev->features[0], vlan->vlan_proto))
>                 vlandev->hard_header_len =3D dev->hard_header_len;
>         else
>                 vlandev->hard_header_len =3D dev->hard_header_len +
VLAN_HLEN;
> @@ -339,7 +339,7 @@ static void vlan_transfer_features(struct net_device
*dev,
>
>         vlandev->priv_flags &=3D ~IFF_XMIT_DST_RELEASE;
>         vlandev->priv_flags |=3D (vlan->real_dev->priv_flags &
> IFF_XMIT_DST_RELEASE);
> -       vlandev->hw_enc_features =3D vlan_tnl_features(vlan->real_dev);
> +       vlandev->hw_enc_features[0] =3D vlan_tnl_features(vlan->real_dev)=
;
>
>         netdev_update_features(vlandev);
>  }
> diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
> index 1a705a4..4e784a1 100644
> --- a/net/8021q/vlan.h
> +++ b/net/8021q/vlan.h
> @@ -107,7 +107,7 @@ static inline netdev_features_t
> vlan_tnl_features(struct net_device *real_dev)
>  {
>         netdev_features_t ret;
>
> -       ret =3D real_dev->hw_enc_features &
> +       ret =3D real_dev->hw_enc_features[0] &
>               (NETIF_F_CSUM_MASK | NETIF_F_GSO_SOFTWARE |
>                NETIF_F_GSO_ENCAP_ALL);
>
> diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
> index a0367b3..6d49761 100644
> --- a/net/8021q/vlan_dev.c
> +++ b/net/8021q/vlan_dev.c
> @@ -566,21 +566,21 @@ static int vlan_dev_init(struct net_device *dev)
>         if (vlan->flags & VLAN_FLAG_BRIDGE_BINDING)
>                 dev->state |=3D (1 << __LINK_STATE_NOCARRIER);
>
> -       dev->hw_features =3D NETIF_F_HW_CSUM | NETIF_F_SG |
> -                          NETIF_F_FRAGLIST | NETIF_F_GSO_SOFTWARE |
> -                          NETIF_F_GSO_ENCAP_ALL |
> -                          NETIF_F_HIGHDMA | NETIF_F_SCTP_CRC |
> -                          NETIF_F_ALL_FCOE;
> +       dev->hw_features[0] =3D NETIF_F_HW_CSUM | NETIF_F_SG |
> +                             NETIF_F_FRAGLIST | NETIF_F_GSO_SOFTWARE |
> +                             NETIF_F_GSO_ENCAP_ALL |
> +                             NETIF_F_HIGHDMA | NETIF_F_SCTP_CRC |
> +                             NETIF_F_ALL_FCOE;
>
> -       dev->features |=3D dev->hw_features | NETIF_F_LLTX;
> +       dev->features[0] |=3D dev->hw_features[0] | NETIF_F_LLTX;
>         dev->gso_max_size =3D real_dev->gso_max_size;
>         dev->gso_max_segs =3D real_dev->gso_max_segs;
> -       if (dev->features & NETIF_F_VLAN_FEATURES)
> +       if (dev->features[0] & NETIF_F_VLAN_FEATURES)
>                 netdev_warn(real_dev, "VLAN features are set
> incorrectly.  Q-in-Q configurations may not work correctly.\n");
>
> -       dev->vlan_features =3D real_dev->vlan_features & ~NETIF_F_ALL_FCO=
E;
> -       dev->hw_enc_features =3D vlan_tnl_features(real_dev);
> -       dev->mpls_features =3D real_dev->mpls_features;
> +       dev->vlan_features[0] =3D real_dev->vlan_features[0] &
~NETIF_F_ALL_FCOE;
> +       dev->hw_enc_features[0] =3D vlan_tnl_features(real_dev);
> +       netdev_features_copy(dev->mpls_features, real_dev->mpls_features)=
;
>
>         /* ipv6 shared card related stuff */
>         dev->dev_id =3D real_dev->dev_id;
> @@ -633,27 +633,30 @@ void vlan_dev_uninit(struct net_device *dev)
>         }
>  }
>
> -static netdev_features_t vlan_dev_fix_features(struct net_device *dev,
> -       netdev_features_t features)
> +static void vlan_dev_fix_features(struct net_device *dev,
> +                                 netdev_features_t *features)
>  {
>         struct net_device *real_dev =3D vlan_dev_priv(dev)->real_dev;
> -       netdev_features_t old_features =3D features;
> -       netdev_features_t lower_features;
> +       netdev_features_t lower_features[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t old_features[NETDEV_FEATURE_DWORDS];
>
> -       lower_features =3D
netdev_intersect_features((real_dev->vlan_features |
> -                                                   NETIF_F_RXCSUM),
> -                                                  real_dev->features);
> +       netdev_features_copy(lower_features, features);
> +
> +       lower_features[0] =3D
> +               netdev_intersect_features((real_dev->vlan_features[0] |
> +                                          NETIF_F_RXCSUM),
> +                                         real_dev->features[0]);
>
>         /* Add HW_CSUM setting to preserve user ability to control
>          * checksum offload on the vlan device.
>          */
> -       if (lower_features & (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))
> -               lower_features |=3D NETIF_F_HW_CSUM;
> -       features =3D netdev_intersect_features(features, lower_features);
> -       features |=3D old_features & (NETIF_F_SOFT_FEATURES |
> NETIF_F_GSO_SOFTWARE);
> -       features |=3D NETIF_F_LLTX;
> +       if (lower_features[0] & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))
> +               lower_features[0] |=3D NETIF_F_HW_CSUM;
>
> -       return features;
> +       features[0] =3D netdev_intersect_features(features[0],
lower_features[0]);
> +       features[0] |=3D old_features[0] &
> +                       (NETIF_F_SOFT_FEATURES | NETIF_F_GSO_SOFTWARE);
> +       features[0] |=3D NETIF_F_LLTX;
>  }
>
>  static int vlan_ethtool_get_link_ksettings(struct net_device *dev,
> diff --git a/net/core/dev.c b/net/core/dev.c
> index c253c2a..7066bf3 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -1765,7 +1765,7 @@ void dev_disable_lro(struct net_device *dev)
>         dev->wanted_features &=3D ~NETIF_F_LRO;
>         netdev_update_features(dev);
>
> -       if (unlikely(dev->features & NETIF_F_LRO))
> +       if (unlikely(dev->features[0] & NETIF_F_LRO))
>                 netdev_WARN(dev, "failed to disable LRO!\n");
>
>         netdev_for_each_lower_dev(dev, lower_dev, iter)
> @@ -1786,7 +1786,7 @@ static void dev_disable_gro_hw(struct net_device
*dev)
>         dev->wanted_features &=3D ~NETIF_F_GRO_HW;
>         netdev_update_features(dev);
>
> -       if (unlikely(dev->features & NETIF_F_GRO_HW))
> +       if (unlikely(dev->features[0] & NETIF_F_GRO_HW))
>                 netdev_WARN(dev, "failed to disable GRO_HW!\n");
>  }
>
> @@ -3276,7 +3276,7 @@ static void skb_warn_bad_offload(const struct
> sk_buff *skb)
>         }
>         skb_dump(KERN_WARNING, skb, false);
>         WARN(1, "%s: caps=3D(%pNF, %pNF)\n",
> -            name, dev ? &dev->features : &null_features,
> +            name, dev ? &dev->features[0] : &null_features,
>              skb->sk ? &skb->sk->sk_route_caps : &null_features);
>  }
>
> @@ -3463,7 +3463,8 @@ struct sk_buff *__skb_gso_segment(struct sk_buff
*skb,
>                 netdev_features_t partial_features =3D NETIF_F_GSO_ROBUST=
;
>                 struct net_device *dev =3D skb->dev;
>
> -               partial_features |=3D dev->features &
dev->gso_partial_features;
> +               partial_features |=3D
> +                               dev->features[0] &
dev->gso_partial_features;
>                 if (!skb_gso_ok(skb, features | partial_features))
>                         features &=3D ~NETIF_F_GSO_PARTIAL;
>         }
> @@ -3508,7 +3509,7 @@ static int illegal_highdma(struct net_device
> *dev, struct sk_buff *skb)
>  #ifdef CONFIG_HIGHMEM
>         int i;
>
> -       if (!(dev->features & NETIF_F_HIGHDMA)) {
> +       if (!(dev->features[0] & NETIF_F_HIGHDMA)) {
>                 for (i =3D 0; i < skb_shinfo(skb)->nr_frags; i++) {
>                         skb_frag_t *frag =3D &skb_shinfo(skb)->frags[i];
>
> @@ -3612,34 +3613,33 @@ static netdev_features_t
> gso_features_check(const struct sk_buff *skb,
>         return features;
>  }
>
> -netdev_features_t netif_skb_features(struct sk_buff *skb)
> +void netif_skb_features(struct sk_buff *skb, netdev_features_t *features=
)
>  {
>         struct net_device *dev =3D skb->dev;
> -       netdev_features_t features =3D dev->features;
>
> +       netdev_features_copy(features, dev->features);
>         if (skb_is_gso(skb))
> -               features =3D gso_features_check(skb, dev, features);
> +               features[0] =3D gso_features_check(skb, dev, features[0])=
;
>
>         /* If encapsulation offload request, verify we are testing
>          * hardware encapsulation features instead of standard
>          * features for the netdev
>          */
>         if (skb->encapsulation)
> -               features &=3D dev->hw_enc_features;
> +               netdev_features_and(features, dev->hw_enc_features);
>
>         if (skb_vlan_tagged(skb))
> -               features =3D netdev_intersect_features(features,
> -                                                    dev->vlan_features |
> -
 NETIF_F_HW_VLAN_CTAG_TX |
> -
 NETIF_F_HW_VLAN_STAG_TX);
> +               features[0] =3D netdev_intersect_features(features[0],
> +
dev->vlan_features[0] |
> +
> NETIF_F_HW_VLAN_CTAG_TX |
> +
> NETIF_F_HW_VLAN_STAG_TX);
>
>         if (dev->netdev_ops->ndo_features_check)
> -               features &=3D dev->netdev_ops->ndo_features_check(skb, de=
v,
> -                                                               features)=
;
> +               dev->netdev_ops->ndo_features_check(skb, dev, features);
>         else
> -               features &=3D dflt_features_check(skb, dev, features);
> +               features[0] &=3D dflt_features_check(skb, dev, features[0=
]);
>
> -       return harmonize_features(skb, features);
> +       features[0] =3D harmonize_features(skb, features[0]);
>  }
>  EXPORT_SYMBOL(netif_skb_features);
>
> @@ -3722,10 +3722,10 @@ EXPORT_SYMBOL(skb_csum_hwoffload_help);
>
>  static struct sk_buff *validate_xmit_skb(struct sk_buff *skb, struct
> net_device *dev, bool *again)
>  {
> -       netdev_features_t features;
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS];
>
> -       features =3D netif_skb_features(skb);
> -       skb =3D validate_xmit_vlan(skb, features);
> +       netif_skb_features(skb, features);
> +       skb =3D validate_xmit_vlan(skb, features[0]);
>         if (unlikely(!skb))
>                 goto out_null;
>
> @@ -3733,10 +3733,10 @@ static struct sk_buff
> *validate_xmit_skb(struct sk_buff *skb, struct net_device
>         if (unlikely(!skb))
>                 goto out_null;
>
> -       if (netif_needs_gso(skb, features)) {
> +       if (netif_needs_gso(skb, features[0])) {
>                 struct sk_buff *segs;
>
> -               segs =3D skb_gso_segment(skb, features);
> +               segs =3D skb_gso_segment(skb, features[0]);
>                 if (IS_ERR(segs)) {
>                         goto out_kfree_skb;
>                 } else if (segs) {
> @@ -3744,7 +3744,7 @@ static struct sk_buff *validate_xmit_skb(struct
> sk_buff *skb, struct net_device
>                         skb =3D segs;
>                 }
>         } else {
> -               if (skb_needs_linearize(skb, features) &&
> +               if (skb_needs_linearize(skb, features[0]) &&
>                     __skb_linearize(skb))
>                         goto out_kfree_skb;
>
> @@ -3759,12 +3759,12 @@ static struct sk_buff
> *validate_xmit_skb(struct sk_buff *skb, struct net_device
>                         else
>                                 skb_set_transport_header(skb,
>
> skb_checksum_start_offset(skb));
> -                       if (skb_csum_hwoffload_help(skb, features))
> +                       if (skb_csum_hwoffload_help(skb, features[0]))
>                                 goto out_kfree_skb;
>                 }
>         }
>
> -       skb =3D validate_xmit_xfrm(skb, features, again);
> +       skb =3D validate_xmit_xfrm(skb, features[0], again);
>
>         return skb;
>
> @@ -4429,7 +4429,7 @@ set_rps_cpu(struct net_device *dev, struct sk_buff
*skb,
>
>                 /* Should we steer this flow to a different hardware
queue? */
>                 if (!skb_rx_queue_recorded(skb) || !dev->rx_cpu_rmap ||
> -                   !(dev->features & NETIF_F_NTUPLE))
> +                   !(dev->features[0] & NETIF_F_NTUPLE))
>                         goto out;
>                 rxq_index =3D cpu_rmap_lookup_index(dev->rx_cpu_rmap,
next_cpu);
>                 if (rxq_index =3D=3D skb_get_rx_queue(skb))
> @@ -9799,171 +9799,179 @@ static void net_set_todo(struct net_device *dev=
)
>         dev_net(dev)->dev_unreg_count++;
>  }
>
> -static netdev_features_t netdev_sync_upper_features(struct net_device
*lower,
> -       struct net_device *upper, netdev_features_t features)
> +static void netdev_sync_upper_features(struct net_device *lower,
> +                                      struct net_device *upper,
> +                                      netdev_features_t *features)
>  {
>         netdev_features_t upper_disables =3D NETIF_F_UPPER_DISABLES;
>         netdev_features_t feature;
>         int feature_bit;
> +       unsigned int i;
>
> -       for_each_netdev_feature(upper_disables, feature_bit) {
> -               feature =3D __NETIF_F_BIT(feature_bit);
> -               if (!(upper->wanted_features & feature)
> -                   && (features & feature)) {
> -                       netdev_dbg(lower, "Dropping feature %pNF,
> upper dev %s has it off.\n",
> -                                  &feature, upper->name);
> -                       features &=3D ~feature;
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++) {
> +               for_each_netdev_feature(upper_disables, feature_bit) {
> +                       feature =3D __NETIF_F_BIT(feature_bit);
> +                       if (!(upper->wanted_features[i] & feature) &&
> +                           (features[i] & feature)) {
> +                               netdev_dbg(lower, "Dropping
> feature[%u] %pNF, upper dev %s has it off.\n",
> +                                          i, &feature, upper->name);
> +                               features[i] &=3D ~feature;
> +                       }
>                 }
>         }
> -
> -       return features;
>  }
>
>  static void netdev_sync_lower_features(struct net_device *upper,
> -       struct net_device *lower, netdev_features_t features)
> +       struct net_device *lower, netdev_features_t *features)
>  {
>         netdev_features_t upper_disables =3D NETIF_F_UPPER_DISABLES;
>         netdev_features_t feature;
>         int feature_bit;
> +       unsigned int i;
>
> -       for_each_netdev_feature(upper_disables, feature_bit) {
> -               feature =3D __NETIF_F_BIT(feature_bit);
> -               if (!(features & feature) && (lower->features & feature))
{
> -                       netdev_dbg(upper, "Disabling feature %pNF on
> lower dev %s.\n",
> -                                  &feature, lower->name);
> -                       lower->wanted_features &=3D ~feature;
> -                       __netdev_update_features(lower);
> -
> -                       if (unlikely(lower->features & feature))
> -                               netdev_WARN(upper, "failed to disable
> %pNF on %s!\n",
> -                                           &feature, lower->name);
> -                       else
> -                               netdev_features_change(lower);
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++) {
> +               for_each_netdev_feature(upper_disables, feature_bit) {
> +                       feature =3D __NETIF_F_BIT(feature_bit);
> +                       if (!(features[i] & feature) &&
> +                           (lower->features[i] & feature)) {
> +                               netdev_dbg(upper, "Disabling
> feature[%u] %pNF on lower dev %s.\n",
> +                                          i, &feature, lower->name);
> +                               lower->wanted_features[i] &=3D ~feature[i=
];
> +                               __netdev_update_features(lower);
> +
> +                               if (unlikely(lower->features[i] &
feature))
> +                                       netdev_WARN(upper, "failed to
> disable feature[%u] %pNF on %s!\n",
> +                                                   i, &feature,
lower->name);
> +                               else
> +                                       netdev_features_change(lower);
> +                       }
>                 }
>         }
>  }
>
> -static netdev_features_t netdev_fix_features(struct net_device *dev,
> -       netdev_features_t features)
> +static void netdev_fix_features(struct net_device *dev,
> +                               netdev_features_t *features)
>  {
>         /* Fix illegal checksum combinations */
> -       if ((features & NETIF_F_HW_CSUM) &&
> -           (features & (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))) {
> +       if ((features[0] & NETIF_F_HW_CSUM) &&
> +           (features[0] & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))) {
>                 netdev_warn(dev, "mixed HW and IP checksum settings.\n");
> -               features &=3D ~(NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM);
> +               features[0] &=3D ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
>         }
>
>         /* TSO requires that SG is present as well. */
> -       if ((features & NETIF_F_ALL_TSO) && !(features & NETIF_F_SG)) {
> +       if ((features[0] & NETIF_F_ALL_TSO) && !(features[0] &
NETIF_F_SG)) {
>                 netdev_dbg(dev, "Dropping TSO features since no SG
feature.\n");
> -               features &=3D ~NETIF_F_ALL_TSO;
> +               features[0] &=3D ~NETIF_F_ALL_TSO;
>         }
>
> -       if ((features & NETIF_F_TSO) && !(features & NETIF_F_HW_CSUM) &&
> -                                       !(features & NETIF_F_IP_CSUM)) {
> +       if ((features[0] & NETIF_F_TSO) && !(features[0] &
NETIF_F_HW_CSUM) &&
> +           !(features[0] & NETIF_F_IP_CSUM)) {
>                 netdev_dbg(dev, "Dropping TSO features since no CSUM
> feature.\n");
> -               features &=3D ~NETIF_F_TSO;
> -               features &=3D ~NETIF_F_TSO_ECN;
> +               features[0] &=3D ~NETIF_F_TSO;
> +               features[0] &=3D ~NETIF_F_TSO_ECN;
>         }
>
> -       if ((features & NETIF_F_TSO6) && !(features & NETIF_F_HW_CSUM) &&
> -                                        !(features & NETIF_F_IPV6_CSUM))
{
> +       if ((features[0] & NETIF_F_TSO6) && !(features[0] &
NETIF_F_HW_CSUM) &&
> +           !(features[0] & NETIF_F_IPV6_CSUM)) {
>                 netdev_dbg(dev, "Dropping TSO6 features since no CSUM
> feature.\n");
> -               features &=3D ~NETIF_F_TSO6;
> +               features[0] &=3D ~NETIF_F_TSO6;
>         }
>
>         /* TSO with IPv4 ID mangling requires IPv4 TSO be enabled */
> -       if ((features & NETIF_F_TSO_MANGLEID) && !(features &
NETIF_F_TSO))
> -               features &=3D ~NETIF_F_TSO_MANGLEID;
> +       if ((features[0] & NETIF_F_TSO_MANGLEID) &&
> +           !(features[0] & NETIF_F_TSO))
> +               features[0] &=3D ~NETIF_F_TSO_MANGLEID;
>
>         /* TSO ECN requires that TSO is present as well. */
> -       if ((features & NETIF_F_ALL_TSO) =3D=3D NETIF_F_TSO_ECN)
> -               features &=3D ~NETIF_F_TSO_ECN;
> +       if ((features[0] & NETIF_F_ALL_TSO) =3D=3D NETIF_F_TSO_ECN)
> +               features[0] &=3D ~NETIF_F_TSO_ECN;
>
>         /* Software GSO depends on SG. */
> -       if ((features & NETIF_F_GSO) && !(features & NETIF_F_SG)) {
> +       if ((features[0] & NETIF_F_GSO) && !(features[0] & NETIF_F_SG)) {
>                 netdev_dbg(dev, "Dropping NETIF_F_GSO since no SG
feature.\n");
> -               features &=3D ~NETIF_F_GSO;
> +               features[0] &=3D ~NETIF_F_GSO;
>         }
>
>         /* GSO partial features require GSO partial be set */
> -       if ((features & dev->gso_partial_features) &&
> -           !(features & NETIF_F_GSO_PARTIAL)) {
> +       if ((features[0] & dev->gso_partial_features) &&
> +           !(features[0] & NETIF_F_GSO_PARTIAL)) {
>                 netdev_dbg(dev,
>                            "Dropping partially supported GSO features
> since no GSO partial.\n");
> -               features &=3D ~dev->gso_partial_features;
> +               features[0] &=3D ~dev->gso_partial_features;
>         }
>
> -       if (!(features & NETIF_F_RXCSUM)) {
> +       if (!(features[0] & NETIF_F_RXCSUM)) {
>                 /* NETIF_F_GRO_HW implies doing RXCSUM since every packet
>                  * successfully merged by hardware must also have the
>                  * checksum verified by hardware.  If the user does not
>                  * want to enable RXCSUM, logically, we should disable
GRO_HW.
>                  */
> -               if (features & NETIF_F_GRO_HW) {
> +               if (features[0] & NETIF_F_GRO_HW) {
>                         netdev_dbg(dev, "Dropping NETIF_F_GRO_HW since
> no RXCSUM feature.\n");
> -                       features &=3D ~NETIF_F_GRO_HW;
> +                       features[0] &=3D ~NETIF_F_GRO_HW;
>                 }
>         }
>
>         /* LRO/HW-GRO features cannot be combined with RX-FCS */
> -       if (features & NETIF_F_RXFCS) {
> -               if (features & NETIF_F_LRO) {
> +       if (features[0] & NETIF_F_RXFCS) {
> +               if (features[0] & NETIF_F_LRO) {
>                         netdev_dbg(dev, "Dropping LRO feature since
> RX-FCS is requested.\n");
> -                       features &=3D ~NETIF_F_LRO;
> +                       features[0] &=3D ~NETIF_F_LRO;
>                 }
>
> -               if (features & NETIF_F_GRO_HW) {
> +               if (features[0] & NETIF_F_GRO_HW) {
>                         netdev_dbg(dev, "Dropping HW-GRO feature since
> RX-FCS is requested.\n");
> -                       features &=3D ~NETIF_F_GRO_HW;
> +                       features[0] &=3D ~NETIF_F_GRO_HW;
>                 }
>         }
>
> -       if (features & NETIF_F_HW_TLS_TX) {
> -               bool ip_csum =3D (features & (NETIF_F_IP_CSUM |
> NETIF_F_IPV6_CSUM)) =3D=3D
> +       if (features[0] & NETIF_F_HW_TLS_TX) {
> +               bool ip_csum =3D (features[0] & (NETIF_F_IP_CSUM |
> NETIF_F_IPV6_CSUM)) =3D=3D
>                         (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
> -               bool hw_csum =3D features & NETIF_F_HW_CSUM;
> +               bool hw_csum =3D features[0] & NETIF_F_HW_CSUM;
>
>                 if (!ip_csum && !hw_csum) {
>                         netdev_dbg(dev, "Dropping TLS TX HW offload
> feature since no CSUM feature.\n");
> -                       features &=3D ~NETIF_F_HW_TLS_TX;
> +                       features[0] &=3D ~NETIF_F_HW_TLS_TX;
>                 }
>         }
>
> -       if ((features & NETIF_F_HW_TLS_RX) && !(features &
NETIF_F_RXCSUM)) {
> +       if ((features[0] & NETIF_F_HW_TLS_RX) &&
> +           !(features[0] & NETIF_F_RXCSUM)) {
>                 netdev_dbg(dev, "Dropping TLS RX HW offload feature
> since no RXCSUM feature.\n");
> -               features &=3D ~NETIF_F_HW_TLS_RX;
> +               features[0] &=3D ~NETIF_F_HW_TLS_RX;
>         }
> -
> -       return features;
>  }
>
>  int __netdev_update_features(struct net_device *dev)
>  {
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS];
>         struct net_device *upper, *lower;
> -       netdev_features_t features;
>         struct list_head *iter;
> +       unsigned int i;
>         int err =3D -1;
>
>         ASSERT_RTNL();
>
> -       features =3D netdev_get_wanted_features(dev);
> +       netdev_get_wanted_features(dev, features);
>
>         if (dev->netdev_ops->ndo_fix_features)
> -               features =3D dev->netdev_ops->ndo_fix_features(dev,
features);
> +               dev->netdev_ops->ndo_fix_features(dev, features);
>
>         /* driver might be less strict about feature dependencies */
> -       features =3D netdev_fix_features(dev, features);
> +       netdev_fix_features(dev, features);
>
>         /* some features can't be enabled if they're off on an upper
device */
>         netdev_for_each_upper_dev_rcu(dev, upper, iter)
> -               features =3D netdev_sync_upper_features(dev, upper,
features);
> +               netdev_sync_upper_features(dev, upper, features);
>
> -       if (dev->features =3D=3D features)
> +       if (netdev_features_equal(dev->features, features))
>                 goto sync_lower;
>
> -       netdev_dbg(dev, "Features changed: %pNF -> %pNF\n",
> -               &dev->features, &features);
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               netdev_dbg(dev, "Features[%u] changed: %pNF -> %pNF\n",
> +                          i, &dev->features[i], &features[i]);
>
>         if (dev->netdev_ops->ndo_set_features)
>                 err =3D dev->netdev_ops->ndo_set_features(dev, features);
> @@ -9971,9 +9979,10 @@ int __netdev_update_features(struct net_device
*dev)
>                 err =3D 0;
>
>         if (unlikely(err < 0)) {
> -               netdev_err(dev,
> -                       "set_features() failed (%d); wanted %pNF, left
%pNF\n",
> -                       err, &features, &dev->features);
> +               for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +                       netdev_err(dev,
> +                                  "set_features() failed (%d);
> wanted[%u] %pNF, left[%u] %pNF\n",
> +                                  err, i, &features[i], i,
&dev->features[i]);
>                 /* return non-0 since some features might have changed an=
d
>                  * it's better to fire a spurious notification than miss
it
>                  */
> @@ -9988,9 +9997,10 @@ int __netdev_update_features(struct net_device
*dev)
>                 netdev_sync_lower_features(dev, lower, features);
>
>         if (!err) {
> -               netdev_features_t diff =3D features ^ dev->features;
> +               netdev_features_t diff[NETDEV_FEATURE_DWORDS];
>
> -               if (diff & NETIF_F_RX_UDP_TUNNEL_PORT) {
> +               netdev_features_xor(diff, features, dev->features);
> +               if (diff[0] & NETIF_F_RX_UDP_TUNNEL_PORT) {
>                         /* udp_tunnel_{get,drop}_rx_info both need
>                          * NETIF_F_RX_UDP_TUNNEL_PORT enabled on the
>                          * device, or they won't do anything.
> @@ -9998,33 +10008,33 @@ int __netdev_update_features(struct net_device
*dev)
>                          * *before* calling udp_tunnel_get_rx_info,
>                          * but *after* calling udp_tunnel_drop_rx_info.
>                          */
> -                       if (features & NETIF_F_RX_UDP_TUNNEL_PORT) {
> -                               dev->features =3D features;
> +                       if (features[0] & NETIF_F_RX_UDP_TUNNEL_PORT) {
> +                               dev->features[0] =3D features[0];
>                                 udp_tunnel_get_rx_info(dev);
>                         } else {
>                                 udp_tunnel_drop_rx_info(dev);
>                         }
>                 }
>
> -               if (diff & NETIF_F_HW_VLAN_CTAG_FILTER) {
> -                       if (features & NETIF_F_HW_VLAN_CTAG_FILTER) {
> -                               dev->features =3D features;
> +               if (diff[0] & NETIF_F_HW_VLAN_CTAG_FILTER) {
> +                       if (features[0] & NETIF_F_HW_VLAN_CTAG_FILTER) {
> +                               dev->features[0] =3D features[0];
>                                 err |=3D vlan_get_rx_ctag_filter_info(dev=
);
>                         } else {
>                                 vlan_drop_rx_ctag_filter_info(dev);
>                         }
>                 }
>
> -               if (diff & NETIF_F_HW_VLAN_STAG_FILTER) {
> +               if (diff[0] & NETIF_F_HW_VLAN_STAG_FILTER) {
>                         if (features & NETIF_F_HW_VLAN_STAG_FILTER) {
> -                               dev->features =3D features;
> +                               dev->features[0] =3D features[0];
>                                 err |=3D vlan_get_rx_stag_filter_info(dev=
);
>                         } else {
>                                 vlan_drop_rx_stag_filter_info(dev);
>                         }
>                 }
>
> -               dev->features =3D features;
> +               netdev_features_copy(dev->features, features);
>         }
>
>         return err < 0 ? 0 : 1;
> @@ -10213,7 +10223,7 @@ int register_netdevice(struct net_device *dev)
>         int ret;
>         struct net *net =3D dev_net(dev);
>
> -       BUILD_BUG_ON(sizeof(netdev_features_t) * BITS_PER_BYTE <
> +       BUILD_BUG_ON(sizeof(dev->features) * BITS_PER_BYTE <
>                      NETDEV_FEATURE_COUNT);
>         BUG_ON(dev_boot_phase);
>         ASSERT_RTNL();
> @@ -10250,7 +10260,7 @@ int register_netdevice(struct net_device *dev)
>                 }
>         }
>
> -       if (((dev->hw_features | dev->features) &
> +       if (((dev->hw_features[0] | dev->features[0]) &
>              NETIF_F_HW_VLAN_CTAG_FILTER) &&
>             (!dev->netdev_ops->ndo_vlan_rx_add_vid ||
>              !dev->netdev_ops->ndo_vlan_rx_kill_vid)) {
> @@ -10268,44 +10278,46 @@ int register_netdevice(struct net_device *dev)
>         /* Transfer changeable features to wanted_features and enable
>          * software offloads (GSO and GRO).
>          */
> -       dev->hw_features |=3D (NETIF_F_SOFT_FEATURES |
NETIF_F_SOFT_FEATURES_OFF);
> -       dev->features |=3D NETIF_F_SOFT_FEATURES;
> +       dev->hw_features[0] |=3D
> +                       (NETIF_F_SOFT_FEATURES |
NETIF_F_SOFT_FEATURES_OFF);
> +       dev->features[0] |=3D NETIF_F_SOFT_FEATURES;
>
>         if (dev->udp_tunnel_nic_info) {
> -               dev->features |=3D NETIF_F_RX_UDP_TUNNEL_PORT;
> -               dev->hw_features |=3D NETIF_F_RX_UDP_TUNNEL_PORT;
> +               dev->features[0] |=3D NETIF_F_RX_UDP_TUNNEL_PORT;
> +               dev->hw_features[0] |=3D NETIF_F_RX_UDP_TUNNEL_PORT;
>         }
>
> -       dev->wanted_features =3D dev->features & dev->hw_features;
> +       netdev_features_and(dev->wanted_features, dev->features,
> +                           dev->hw_features);
>
>         if (!(dev->flags & IFF_LOOPBACK))
> -               dev->hw_features |=3D NETIF_F_NOCACHE_COPY;
> +               dev->hw_features[0] |=3D NETIF_F_NOCACHE_COPY;
>
>         /* If IPv4 TCP segmentation offload is supported we should also
>          * allow the device to enable segmenting the frame with the optio=
n
>          * of ignoring a static IP ID value.  This doesn't enable the
>          * feature itself but allows the user to enable it later.
>          */
> -       if (dev->hw_features & NETIF_F_TSO)
> -               dev->hw_features |=3D NETIF_F_TSO_MANGLEID;
> -       if (dev->vlan_features & NETIF_F_TSO)
> -               dev->vlan_features |=3D NETIF_F_TSO_MANGLEID;
> -       if (dev->mpls_features & NETIF_F_TSO)
> -               dev->mpls_features |=3D NETIF_F_TSO_MANGLEID;
> -       if (dev->hw_enc_features & NETIF_F_TSO)
> -               dev->hw_enc_features |=3D NETIF_F_TSO_MANGLEID;
> +       if (dev->hw_features[0] & NETIF_F_TSO)
> +               dev->hw_features[0] |=3D NETIF_F_TSO_MANGLEID;
> +       if (dev->vlan_features[0] & NETIF_F_TSO)
> +               dev->vlan_features[0] |=3D NETIF_F_TSO_MANGLEID;
> +       if (dev->mpls_features[0] & NETIF_F_TSO)
> +               dev->mpls_features[0] |=3D NETIF_F_TSO_MANGLEID;
> +       if (dev->hw_enc_features[0] & NETIF_F_TSO)
> +               dev->hw_enc_features[0] |=3D NETIF_F_TSO_MANGLEID;
>
>         /* Make NETIF_F_HIGHDMA inheritable to VLAN devices.
>          */
> -       dev->vlan_features |=3D NETIF_F_HIGHDMA;
> +       dev->vlan_features[0] |=3D NETIF_F_HIGHDMA;
>
>         /* Make NETIF_F_SG inheritable to tunnel devices.
>          */
> -       dev->hw_enc_features |=3D NETIF_F_SG | NETIF_F_GSO_PARTIAL;
> +       dev->hw_enc_features[0] |=3D NETIF_F_SG | NETIF_F_GSO_PARTIAL;
>
>         /* Make NETIF_F_SG inheritable to MPLS.
>          */
> -       dev->mpls_features |=3D NETIF_F_SG;
> +       dev->mpls_features[0] |=3D NETIF_F_SG;
>
>         ret =3D call_netdevice_notifiers(NETDEV_POST_INIT, dev);
>         ret =3D notifier_to_errno(ret);
> @@ -11146,7 +11158,7 @@ int __dev_change_net_namespace(struct
> net_device *dev, struct net *net,
>
>         /* Don't allow namespace local devices to be moved. */
>         err =3D -EINVAL;
> -       if (dev->features & NETIF_F_NETNS_LOCAL)
> +       if (dev->features[0] & NETIF_F_NETNS_LOCAL)
>                 goto out;
>
>         /* Ensure the device has been registrered */
> @@ -11506,7 +11518,7 @@ static void __net_exit
> default_device_exit(struct net *net)
>                 char fb_name[IFNAMSIZ];
>
>                 /* Ignore unmoveable devices (i.e. loopback) */
> -               if (dev->features & NETIF_F_NETNS_LOCAL)
> +               if (dev->features[0] & NETIF_F_NETNS_LOCAL)
>                         continue;
>
>                 /* Leave virtual devices for the generic cleanup */
> diff --git a/net/core/netpoll.c b/net/core/netpoll.c
> index 0a6b047..2c0adf4 100644
> --- a/net/core/netpoll.c
> +++ b/net/core/netpoll.c
> @@ -74,13 +74,13 @@ static netdev_tx_t netpoll_start_xmit(struct sk_buff
*skb,
>                                       struct net_device *dev,
>                                       struct netdev_queue *txq)
>  {
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS];
>         netdev_tx_t status =3D NETDEV_TX_OK;
> -       netdev_features_t features;
>
> -       features =3D netif_skb_features(skb);
> +       netif_skb_features(skb, features);
>
>         if (skb_vlan_tag_present(skb) &&
> -           !vlan_hw_offload_capable(features, skb->vlan_proto)) {
> +           !vlan_hw_offload_capable(features[0], skb->vlan_proto)) {
>                 skb =3D __vlan_hwaccel_push_inside(skb);
>                 if (unlikely(!skb)) {
>                         /* This is actually a packet drop, but we
> diff --git a/net/ethtool/features.c b/net/ethtool/features.c
> index 1c9f4df..0eedb17 100644
> --- a/net/ethtool/features.c
> +++ b/net/ethtool/features.c
> @@ -25,12 +25,13 @@ const struct nla_policy ethnl_features_get_policy[] =
=3D
{
>                 NLA_POLICY_NESTED(ethnl_header_policy),
>  };
>
> -static void ethnl_features_to_bitmap32(u32 *dest, netdev_features_t src)
> +static void ethnl_features_to_bitmap32(u32 *dest, netdev_features_t *src=
)
>  {
> +       u32 *__src =3D (u32 *)src;
>         unsigned int i;
>
>         for (i =3D 0; i < ETHTOOL_DEV_FEATURE_WORDS; i++)
> -               dest[i] =3D src >> (32 * i);
> +               dest[i] =3D __src[i];
>  }
>
>  static int features_prepare_data(const struct ethnl_req_info *req_base,
> @@ -38,15 +39,23 @@ static int features_prepare_data(const struct
> ethnl_req_info *req_base,
>                                  struct genl_info *info)
>  {
>         struct features_reply_data *data =3D FEATURES_REPDATA(reply_base)=
;
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS] =3D {0};
>         struct net_device *dev =3D reply_base->dev;
> -       netdev_features_t all_features;
> +       unsigned int i;
>
>         ethnl_features_to_bitmap32(data->hw, dev->hw_features);
>         ethnl_features_to_bitmap32(data->wanted, dev->wanted_features);
>         ethnl_features_to_bitmap32(data->active, dev->features);
> -       ethnl_features_to_bitmap32(data->nochange, NETIF_F_NEVER_CHANGE);
> -       all_features =3D GENMASK_ULL(NETDEV_FEATURE_COUNT - 1, 0);
> -       ethnl_features_to_bitmap32(data->all, all_features);
> +       features[0] =3D NETIF_F_NEVER_CHANGE;
> +       ethnl_features_to_bitmap32(data->nochange, features);
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++) {
> +               if (NETDEV_FEATURE_COUNT >=3D (i + 1) * 64)
> +                       features[i] =3D GENMASK_ULL(63, 0);
> +               else
> +                       features[i] =3D GENMASK_ULL(NETDEV_FEATURE_COUNT =
-
i * 64,
> +                                                 0);
> +       }
> +       ethnl_features_to_bitmap32(data->all, features);
>
>         return 0;
>  }
> @@ -131,27 +140,29 @@ const struct nla_policy ethnl_features_set_policy[]
=3D {
>         [ETHTOOL_A_FEATURES_WANTED]     =3D { .type =3D NLA_NESTED },
>  };
>
> -static void ethnl_features_to_bitmap(unsigned long *dest,
> netdev_features_t val)
> +static void ethnl_features_to_bitmap(unsigned long *dest,
> +                                    netdev_features_t *val)
>  {
>         const unsigned int words =3D BITS_TO_LONGS(NETDEV_FEATURE_COUNT);
>         unsigned int i;
>
>         bitmap_zero(dest, NETDEV_FEATURE_COUNT);
>         for (i =3D 0; i < words; i++)
> -               dest[i] =3D (unsigned long)(val >> (i * BITS_PER_LONG));
> +               dest[i] =3D
> +                       (unsigned long)(val[i / 2] >> (i % 2 *
BITS_PER_LONG));
>  }
>
> -static netdev_features_t ethnl_bitmap_to_features(unsigned long *src)
> +static void ethnl_bitmap_to_features(netdev_features_t *val, unsigned
> long *src)
>  {
> -       const unsigned int nft_bits =3D sizeof(netdev_features_t) *
BITS_PER_BYTE;
>         const unsigned int words =3D BITS_TO_LONGS(NETDEV_FEATURE_COUNT);
> -       netdev_features_t ret =3D 0;
>         unsigned int i;
>
> +       for (i =3D 0; i < NETDEV_FEATURE_DWORDS; i++)
> +               val[i] =3D 0;
> +
>         for (i =3D 0; i < words; i++)
> -               ret |=3D (netdev_features_t)(src[i]) << (i * BITS_PER_LON=
G);
> -       ret &=3D ~(netdev_features_t)0 >> (nft_bits - NETDEV_FEATURE_COUN=
T);
> -       return ret;
> +               val[i / 2] |=3D
> +                       (netdev_features_t)(src[i]) << (i % 2 *
BITS_PER_LONG);
>  }
>
>  static int features_send_reply(struct net_device *dev, struct genl_info
*info,
> @@ -212,12 +223,14 @@ int ethnl_set_features(struct sk_buff *skb,
> struct genl_info *info)
>  {
>         DECLARE_BITMAP(wanted_diff_mask, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(active_diff_mask, NETDEV_FEATURE_COUNT);
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS];
>         DECLARE_BITMAP(old_active, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(old_wanted, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(new_active, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(new_wanted, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(req_wanted, NETDEV_FEATURE_COUNT);
>         DECLARE_BITMAP(req_mask, NETDEV_FEATURE_COUNT);
> +       netdev_features_t tmp[NETDEV_FEATURE_DWORDS];
>         struct ethnl_req_info req_info =3D {};
>         struct nlattr **tb =3D info->attrs;
>         struct net_device *dev;
> @@ -242,7 +255,11 @@ int ethnl_set_features(struct sk_buff *skb,
> struct genl_info *info)
>                                  netdev_features_strings, info->extack);
>         if (ret < 0)
>                 goto out_rtnl;
> -       if (ethnl_bitmap_to_features(req_mask) & ~NETIF_F_ETHTOOL_BITS) {
> +
> +       ethnl_bitmap_to_features(features, req_mask);
> +       netdev_features_ethtool_bits(tmp);
> +       netdev_features_andnot(features, features, tmp);
> +       if (!netdev_features_empty(features)) {
>                 GENL_SET_ERR_MSG(info, "attempt to change non-ethtool
> features");
>                 ret =3D -EINVAL;
>                 goto out_rtnl;
> @@ -253,8 +270,13 @@ int ethnl_set_features(struct sk_buff *skb,
> struct genl_info *info)
>         bitmap_andnot(new_wanted, old_wanted, req_mask,
NETDEV_FEATURE_COUNT);
>         bitmap_or(req_wanted, new_wanted, req_wanted,
NETDEV_FEATURE_COUNT);
>         if (!bitmap_equal(req_wanted, old_wanted, NETDEV_FEATURE_COUNT)) =
{
> -               dev->wanted_features &=3D ~dev->hw_features;
> -               dev->wanted_features |=3D
> ethnl_bitmap_to_features(req_wanted) & dev->hw_features;
> +               netdev_features_andnot(dev->wanted_features,
> +                                      dev->wanted_features,
> +                                      dev->hw_features);
> +               ethnl_bitmap_to_features(features, req_wanted);
> +               netdev_features_and(features, features, dev->hw_features)=
;
> +               netdev_features_or(dev->wanted_features,
dev->wanted_features,
> +                                  features);
>                 __netdev_update_features(dev);
>         }
>         ethnl_features_to_bitmap(new_active, dev->features);
> diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> index baa5d10..f213ec9 100644
> --- a/net/ethtool/ioctl.c
> +++ b/net/ethtool/ioctl.c
> @@ -67,12 +67,15 @@ static int ethtool_get_features(struct net_device
> *dev, void __user *useraddr)
>         int i;
>
>         /* in case feature bits run out again */
> -       BUILD_BUG_ON(ETHTOOL_DEV_FEATURE_WORDS * sizeof(u32) >
> sizeof(netdev_features_t));
> +       BUILD_BUG_ON(ETHTOOL_DEV_FEATURE_WORDS * sizeof(u32) >
> sizeof(dev->features));
>
>         for (i =3D 0; i < ETHTOOL_DEV_FEATURE_WORDS; ++i) {
> -               features[i].available =3D (u32)(dev->hw_features >> (32 *
i));
> -               features[i].requested =3D (u32)(dev->wanted_features >> (=
32
* i));
> -               features[i].active =3D (u32)(dev->features >> (32 * i));
> +               features[i].available =3D
> +                       (u32)(dev->hw_features[i / 2] >> (i % 2 * 32));
> +               features[i].requested =3D
> +                       (u32)(dev->wanted_features[i / 2] >> (i % 2 *
32));
> +               features[i].active =3D
> +                       (u32)(dev->features[i / 2] >> (i % 2 * 32));
>                 features[i].never_changed =3D
>                         (u32)(NETIF_F_NEVER_CHANGE >> (32 * i));
>         }
> @@ -97,7 +100,9 @@ static int ethtool_set_features(struct net_device
> *dev, void __user *useraddr)
>  {
>         struct ethtool_sfeatures cmd;
>         struct ethtool_set_features_block
features[ETHTOOL_DEV_FEATURE_WORDS];
> -       netdev_features_t wanted =3D 0, valid =3D 0;
> +       netdev_features_t wanted[NETDEV_FEATURE_DWORDS] =3D {0};
> +       netdev_features_t valid[NETDEV_FEATURE_DWORDS] =3D {0};
> +       netdev_features_t tmp[NETDEV_FEATURE_DWORDS];
>         int i, ret =3D 0;
>
>         if (copy_from_user(&cmd, useraddr, sizeof(cmd)))
> @@ -111,23 +116,33 @@ static int ethtool_set_features(struct
> net_device *dev, void __user *useraddr)
>                 return -EFAULT;
>
>         for (i =3D 0; i < ETHTOOL_DEV_FEATURE_WORDS; ++i) {
> -               valid |=3D (netdev_features_t)features[i].valid << (32 * =
i);
> -               wanted |=3D (netdev_features_t)features[i].requested << (=
32
* i);
> +               valid[i / 2] |=3D
> +                       (netdev_features_t)features[i].valid << (32 * i);
> +               wanted[i / 2] |=3D
> +                       (netdev_features_t)features[i].requested << (32 *
i);
>         }
>
> -       if (valid & ~NETIF_F_ETHTOOL_BITS)
> +       netdev_features_ethtool_bits(tmp);
> +       netdev_features_andnot(tmp, features, tmp);
> +       if (!netdev_features_empty(tmp))
>                 return -EINVAL;
>
> -       if (valid & ~dev->hw_features) {
> -               valid &=3D dev->hw_features;
> +       netdev_features_andnot(tmp, valid, dev->hw_features);
> +
> +       if (!netdev_features_empty(tmp)) {
> +               netdev_features_and(valid, valid, dev->hw_features);
>                 ret |=3D ETHTOOL_F_UNSUPPORTED;
>         }
>
> -       dev->wanted_features &=3D ~valid;
> -       dev->wanted_features |=3D wanted & valid;
> +       netdev_features_andnot(dev->wanted_features, dev->wanted_features=
,
> +                              valid);
> +       netdev_features_and(wanted, wanted, valid);
> +       netdev_features_or(dev->wanted_features, dev->wanted_features,
wanted);
>         __netdev_update_features(dev);
>
> -       if ((dev->wanted_features ^ dev->features) & valid)
> +       netdev_features_xor(tmp, dev->wanted_features, dev->features);
> +       netdev_features_and(tmp, tmp, valid);
> +       if (!netdev_features_empty(tmp))
>                 ret |=3D ETHTOOL_F_WISH;
>
>         return ret;
> @@ -227,7 +242,7 @@ static int ethtool_get_one_feature(struct net_device
*dev,
>         netdev_features_t mask =3D ethtool_get_feature_mask(ethcmd);
>         struct ethtool_value edata =3D {
>                 .cmd =3D ethcmd,
> -               .data =3D !!(dev->features & mask),
> +               .data =3D !!(dev->features[0] & mask),
>         };
>
>         if (copy_to_user(useraddr, &edata, sizeof(edata)))
> @@ -238,21 +253,23 @@ static int ethtool_get_one_feature(struct
net_device *dev,
>  static int ethtool_set_one_feature(struct net_device *dev,
>         void __user *useraddr, u32 ethcmd)
>  {
> +       netdev_features_t mask[NETDEV_FEATURE_DWORDS] =3D {0};
>         struct ethtool_value edata;
> -       netdev_features_t mask;
>
>         if (copy_from_user(&edata, useraddr, sizeof(edata)))
>                 return -EFAULT;
>
> -       mask =3D ethtool_get_feature_mask(ethcmd);
> -       mask &=3D dev->hw_features;
> -       if (!mask)
> +       mask[0] =3D ethtool_get_feature_mask(ethcmd);
> +       netdev_features_and(mask, mask, dev->hw_features);
> +       if (netdev_features_empty(mask))
>                 return -EOPNOTSUPP;
>
>         if (edata.data)
> -               dev->wanted_features |=3D mask;
> +               netdev_features_or(dev->wanted_features,
dev->wanted_features,
> +                                  mask)
>         else
> -               dev->wanted_features &=3D ~mask;
> +               netdev_features_andnot(dev->wanted_features,
> +                                      dev->wanted_features, mask);
>
>         __netdev_update_features(dev);
>
> @@ -285,29 +302,37 @@ static u32 __ethtool_get_flags(struct net_device
*dev)
>
>  static int __ethtool_set_flags(struct net_device *dev, u32 data)
>  {
> -       netdev_features_t features =3D 0, changed;
> +       netdev_features_t features[NETDEV_FEATURE_DWORDS] =3D {0};
> +       netdev_features_t changed[NETDEV_FEATURE_DWORDS];
> +       netdev_features_t tmp[NETDEV_FEATURE_DWORDS];
>
>         if (data & ~ETH_ALL_FLAGS)
>                 return -EINVAL;
>
>         if (data & ETH_FLAG_LRO)
> -               features |=3D NETIF_F_LRO;
> +               features[0] |=3D NETIF_F_LRO;
>         if (data & ETH_FLAG_RXVLAN)
> -               features |=3D NETIF_F_HW_VLAN_CTAG_RX;
> +               features[0] |=3D NETIF_F_HW_VLAN_CTAG_RX;
>         if (data & ETH_FLAG_TXVLAN)
> -               features |=3D NETIF_F_HW_VLAN_CTAG_TX;
> +               features[0] |=3D NETIF_F_HW_VLAN_CTAG_TX;
>         if (data & ETH_FLAG_NTUPLE)
> -               features |=3D NETIF_F_NTUPLE;
> +               features[0] |=3D NETIF_F_NTUPLE;
>         if (data & ETH_FLAG_RXHASH)
> -               features |=3D NETIF_F_RXHASH;
> +               features[0] |=3D NETIF_F_RXHASH;
>
>         /* allow changing only bits set in hw_features */
> -       changed =3D (features ^ dev->features) & ETH_ALL_FEATURES;
> -       if (changed & ~dev->hw_features)
> -               return (changed & dev->hw_features) ? -EINVAL :
-EOPNOTSUPP;
> +       netdev_features_xor(changed, features, dev->features);
> +       changed[0] &=3D ETH_ALL_FEATURES;
> +
> +       netdev_features_andnot(tmp, changed, dev->hw_features);
> +       if (!netdev_features_empty(tmp)) {
> +               netdev_features_and(tmp, changed, dev->hw_features);
> +               return (!netdev_features_empty(tmp)) ? -EINVAL :
-EOPNOTSUPP;
> +       }
>
> -       dev->wanted_features =3D
> -               (dev->wanted_features & ~changed) | (features & changed);
> +       netdev_features_andnot(tmp, dev->wanted_features, changed);
> +       netdev_features_and(features, features, changed);
> +       netdev_features_or(dev->wanted_features, tmp, features);
>
>         __netdev_update_features(dev);
>
> @@ -2587,7 +2612,7 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)
>         void __user *useraddr =3D ifr->ifr_data;
>         u32 ethcmd, sub_cmd;
>         int rc;
> -       netdev_features_t old_features;
> +       netdev_features_t old_features[NETDEV_FEATURE_DWORDS];
>
>         if (!dev || !netif_device_present(dev))
>                 return -ENODEV;
> @@ -2650,7 +2675,7 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)
>                 if (rc  < 0)
>                         return rc;
>         }
> -       old_features =3D dev->features;
> +       netdev_features_copy(old_features, dev->features);
>
>         switch (ethcmd) {
>         case ETHTOOL_GSET:
> @@ -2865,7 +2890,7 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)
>         if (dev->ethtool_ops->complete)
>                 dev->ethtool_ops->complete(dev);
>
> -       if (old_features !=3D dev->features)
> +       if (!netdev_features_equal(old_features, dev->features))
>                 netdev_features_change(dev);
>
>         return rc;
> --
> 2.8.1
>
>
>
> --
> Latest Podcast:
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
>
> Dave T=C3=A4ht CTO, TekLibre, LLC
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake



--
Robert Chac=C3=B3n
robert.chacon@jackrabbitwireless.com

--0000000000007c51d805c6c7d4aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a question regarding this, and the current maximum =
number of htb leaf classes and/or qdiscs per interface.<br>I recently integ=
rated Jesper&#39;s <a href=3D"https://github.com/xdp-project/xdp-cpumap-tc"=
>xdp-cpumap-tc</a> code into <a href=3D"https://github.com/rchac/LibreQoS" =
target=3D"_blank">LibreQoS</a>, which increased throughput to 10Gbps on tes=
ts.<br>I suspect somewhere between 10Gbps and 40Gbps throughput is now poss=
ible if you throw enough cores at it. Asking our local university to help u=
s test this.<br>Xdp-cpumap-tc uses xdp&#39;s cpumap-redirect feature to fil=
ter packets into the appropriate CPU / queue using eBPF hash maps, rather t=
han linux tc filters / u32.<br><br>Question) Since LibreQoS would not depen=
d on tc filters, would the current 32-bit or 64-bit feature limit impose a =
practical client limit on LibreQoS?<br><div>The average user&#39;s throughp=
ut is around 3.5Mbps at peak hours, so I&#39;m thinking ~5800 qdiscs and ~5=
800 htb leaf classes would be required for each interface at 20Gbps through=
put for example.</div><div>There may be some more immediate limitations I&#=
39;m not understanding. Just curious about the practical limitations there.=
</div><div><br></div><div>Thanks!<br></div>Robert<br><br>On Sat, Jul 10, 20=
21 at 9:33 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=
=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; One thing so=
mewhat related to this was finally expanding the space<br>&gt; available fo=
r the tc and iptables functionality for<br>&gt; things like hashing and act=
ions etc from 16 bits to 32. That is<br>&gt; something of a fork lift upgra=
de, but... 64k queues is not<br>&gt; enough in some cases, nor is 64k possi=
ble users in libreqos. thoughts<br>&gt;<br>&gt; ---------- Forwarded messag=
e ---------<br>&gt; From: Jian Shen &lt;<a href=3D"mailto:shenjian15@huawei=
.com" target=3D"_blank">shenjian15@huawei.com</a>&gt;<br>&gt; Date: Sat, Ju=
l 10, 2021 at 2:47 AM<br>&gt; Subject: [RFC net-next] net: extend netdev fe=
atures<br>&gt; To: &lt;<a href=3D"mailto:davem@davemloft.net" target=3D"_bl=
ank">davem@davemloft.net</a>&gt;, &lt;<a href=3D"mailto:kuba@kernel.org" ta=
rget=3D"_blank">kuba@kernel.org</a>&gt;<br>&gt; Cc: &lt;<a href=3D"mailto:n=
etdev@vger.kernel.org" target=3D"_blank">netdev@vger.kernel.org</a>&gt;, &l=
t;<a href=3D"mailto:linuxarm@openeuler.org" target=3D"_blank">linuxarm@open=
euler.org</a>&gt;<br>&gt;<br>&gt;<br>&gt; For the prototype of netdev_featu=
res_t is u64, and the number<br>&gt; of netdevice feature bits is 64 now. S=
o there is no space to<br>&gt; introduce new feature bit.<br>&gt;<br>&gt; I=
 did a small change for this. Keep the prototype of<br>&gt; netdev_feature_=
t, and extend the feature members in struct<br>&gt; net_device to an array =
of netdev_features_t. So more features<br>&gt; bits can be used.<br>&gt;<br=
>&gt; As this change, some functions which use netdev_features_t as<br>&gt;=
 parameter or returen value will be affected.<br>&gt; I did below changes:<=
br>&gt; a. parameter: &quot;netdev_features_t&quot; to &quot;netdev_feature=
s_t *&quot;<br>&gt; b. return value: &quot;netdev_feature_t&quot; to &quot;=
void&quot;, and add<br>&gt; &quot;netdev_feature_t *&quot; as output parame=
ter.<br>&gt;<br>&gt; I kept some functions no change, which are surely usei=
ng the<br>&gt; first 64 bit of net device features now, such as function<br=
>&gt; nedev_add_tso_features(). In order to minimize to changes.<br>&gt;<br=
>&gt; For the features are array now, so it&#39;s unable to do logical<br>&=
gt; operation directly. I introduce a inline function set for<br>&gt; them,=
 including &quot;netdev_features_and/andnot/or/xor/equal/empty&quot;.<br>&g=
t;<br>&gt; For NETDEV_FEATURE_COUNT may be more than 64, so the shift<br>&g=
t; operation for NETDEV_FEATURE_COUNT is illegal. I changed some<br>&gt; ma=
croes and functions, which does shift opertion with it.<br>&gt;<br>&gt; I h=
aven&#39;t finished all the changes, for it affected all the<br>&gt; driver=
s which use the feature, need more time and test. I<br>&gt; sent this RFC p=
atch, want to know whether this change is<br>&gt; acceptable, and how to im=
prove it.<br>&gt;<br>&gt; Any comments will be helpful.<br>&gt;<br>&gt; Sig=
ned-off-by: Jian Shen &lt;<a href=3D"mailto:shenjian15@huawei.com" target=
=3D"_blank">shenjian15@huawei.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0drivers=
/net/ethernet/hisilicon/hns/hns_enet.c =C2=A0 | =C2=A034 +--<br>&gt; =C2=A0=
drivers/net/ethernet/hisilicon/hns3/hns3_enet.c | =C2=A097 ++++-----<br>&gt=
; =C2=A0drivers/net/ethernet/huawei/hinic/hinic_main.c =C2=A0| =C2=A071 +++=
---<br>&gt; =C2=A0drivers/net/ethernet/huawei/hinic/hinic_rx.c =C2=A0 =C2=
=A0| =C2=A0 4 +-<br>&gt; =C2=A0include/linux/if_vlan.h =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 2 =
+-<br>&gt; =C2=A0include/linux/netdev_features.h =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 105 ++++++++-<br>&gt; =C2=A0include/linux=
/netdevice.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 | =C2=A031 +--<br>&gt; =C2=A0net/8021q/vlan.c =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 4 +-<br>&gt; =C2=A0net/8021q/vlan.h =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 2 +-<br>&gt; =C2=A0net/8021q/vlan_d=
ev.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A049 +++--<br>&gt; =C2=A0net/core/dev.c =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 276 ++++++++++++------------=
<br>&gt; =C2=A0net/core/netpoll.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 6 +=
-<br>&gt; =C2=A0net/ethtool/features.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A056 +++--<br>=
&gt; =C2=A0net/ethtool/ioctl.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A093 +++++---=
<br>&gt; =C2=A014 files changed, 493 insertions(+), 337 deletions(-)<br>&gt=
;<br>&gt; diff --git a/drivers/net/ethernet/hisilicon/hns/hns_enet.c<br>&gt=
; b/drivers/net/ethernet/hisilicon/hns/hns_enet.c<br>&gt; index ad534f9..4f=
245cf 100644<br>&gt; --- a/drivers/net/ethernet/hisilicon/hns/hns_enet.c<br=
>&gt; +++ b/drivers/net/ethernet/hisilicon/hns/hns_enet.c<br>&gt; @@ -479,7=
 +479,7 @@ static void hns_nic_rx_checksum(struct<br>&gt; hns_nic_ring_data=
 *ring_data,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 l4id;<br>&gt;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* check if RX checksum offload is enabled */<b=
r>&gt; - =C2=A0 =C2=A0 =C2=A0 if (unlikely(!(netdev-&gt;features &amp; NETI=
F_F_RXCSUM)))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (unlikely(!(netdev-&gt;feat=
ures[0] &amp; NETIF_F_RXCSUM)))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*=
 In hardware, we only support checksum for the following protocols:<br>&gt;=
 @@ -1768,17 +1768,17 @@ static int hns_nic_change_mtu(struct<br>&gt; net_d=
evice *ndev, int new_mtu)<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static int =
hns_nic_set_features(struct net_device *netdev,<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t features)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t *features)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 struct hns_nic_priv *priv =3D netdev_priv(netdev);<br>&gt=
;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (priv-&gt;enet_ver) {<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case AE_VERSION_1:<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features &amp; (NETIF_F_TSO | NETIF_F_T=
SO6))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (featur=
es[0] &amp; (NETIF_F_TSO | NETIF_F_TSO6))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_info(net=
dev, &quot;enet v1 do not support tso!\n&quot;);<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 default:<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
if (features &amp; (NETIF_F_TSO | NETIF_F_TSO6)) {<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features[0] &amp; (NETIF_F_TSO | NET=
IF_F_TSO6)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;ops.fill_desc =3D fill_tso_desc;<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 priv-&gt;ops.maybe_stop_tx =3D hns_nic_maybe_stop_tso;<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 /* The chip only support 7*4096 */<br>&gt; @@ -1789,24 +1789=
,23 @@ static int hns_nic_set_features(struct<br>&gt; net_device *netdev,<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;featur=
es =3D features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features[0] =3D =
features[0];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>&gt; =C2=A0}<=
br>&gt;<br>&gt; -static netdev_features_t hns_nic_fix_features(<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *netdev,=
 netdev_features_t features)<br>&gt; +static void hns_nic_fix_features(stru=
ct net_device *netdev,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev=
_features_t *features)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
struct hns_nic_priv *priv =3D netdev_priv(netdev);<br>&gt;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 switch (priv-&gt;enet_ver) {<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 case AE_VERSION_1:<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 features &amp;=3D ~(NETIF_F_TSO | NETIF_F_TSO6 |<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~(NET=
IF_F_TSO | NETIF_F_TSO6 |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETI=
F_F_HW_VLAN_CTAG_FILTER);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 break;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return features;<=
br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static int hns_nic_uc_sync(struct net=
_device *netdev, const unsigned<br>&gt; char *addr)<br>&gt; @@ -2163,8 +216=
2,8 @@ static void hns_nic_set_priv_ops(struct<br>&gt; net_device *netdev)<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;op=
s.maybe_stop_tx =3D hns_nic_maybe_stop_tx;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 } else {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 priv-&gt;ops.get_rxd_bnum =3D get_v2rx_desc_bnum;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((netdev-&gt;features &amp; NETIF=
_F_TSO) ||<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (netdev-&gt;features &amp; NETIF_F_TSO6)) {<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((netdev-&gt;features[0] &amp; NE=
TIF_F_TSO) ||<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (netdev-&gt;features[0] &amp; NETIF_F_TSO6)) {<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 priv-&gt;ops.fill_desc =3D fill_tso_desc;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;ops=
.maybe_stop_tx =3D hns_nic_maybe_stop_tso;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* This chip on=
ly support 7*4096 */<br>&gt; @@ -2325,22 +2324,23 @@ static int hns_nic_dev=
_probe(struct<br>&gt; platform_device *pdev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ndev-&gt;netdev_ops =3D &amp;hns_nic_netdev_ops;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 hns_ethtool_set_ops(ndev);<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 ndev-&gt;features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 ndev-&gt;features[0] |=3D NETIF_F_IP_CSUM | NET=
IF_F_IPV6_CSUM |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GRO;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 ndev-&gt;vlan_features |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ndev-=
&gt;vlan_features[0] |=3D<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_RXCSUM;<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 ndev-&gt;vlan_features |=3D NETIF_F_SG | NETIF_F_G=
SO | NETIF_F_GRO;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ndev-&gt;vlan_features[0] =
|=3D NETIF_F_SG | NETIF_F_GSO | NETIF_F_GRO;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* MTU range: 68 - 9578 (v1) or 9706 (v2) */<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ndev-&gt;min_mtu =3D MAC_MIN_MTU;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 switch (priv-&gt;enet_ver) {<br>&gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 case AE_VERSION_2:<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ndev-&gt;features |=3D NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_NTUP=
LE;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ndev-&gt;hw_=
features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ndev-&gt;features[0] |=3D<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_NTUPLE;<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ndev-&gt;hw_featur=
es[0] |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_=
RXCSUM | NETIF_F_SG | NETIF_F_GSO |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GRO | NETIF_F_=
TSO | NETIF_F_TSO6;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ndev-&gt;vlan_features |=3D NETIF_F_TSO | NETIF_F_TSO6;<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ndev-&gt;vlan_features[0] |=
=3D NETIF_F_TSO | NETIF_F_TSO6;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ndev-&gt;max_mtu =3D MAC_MAX_MTU_V2 -<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN);<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>&gt; d=
iff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c<br>&gt; b/drive=
rs/net/ethernet/hisilicon/hns3/hns3_enet.c<br>&gt; index cdb5f14..ba56907 1=
00644<br>&gt; --- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c<br>&gt;=
 +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c<br>&gt; @@ -1481,7 +=
1481,7 @@ static int hns3_handle_vtags(struct<br>&gt; hns3_enet_ring *tx_ri=
ng,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return =
-EINVAL;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb-&gt;protocol =
=3D=3D htons(ETH_P_8021Q) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 !(handle-&gt;kinfo.netdev-&gt;features &amp; NETIF_F_HW_VLAN_CTAG_TX=
)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(handle-&gt;kinfo.netdev=
-&gt;features[0] &amp; NETIF_F_HW_VLAN_CTAG_TX)) {<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* When HW VLAN acceleration is t=
urned off, and the stack<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0* sets the protocol to 802.1q, the driver just need to<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* set=
 the protocol to the encapsulated ethertype.<br>&gt; @@ -2300,56 +2300,57 @=
@ static int hns3_nic_do_ioctl(struct net_device *netdev,<br>&gt; =C2=A0}<b=
r>&gt;<br>&gt; =C2=A0static int hns3_nic_set_features(struct net_device *ne=
tdev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_features_t featu=
res)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_features_t *feat=
ures)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t chan=
ged =3D netdev-&gt;features ^ features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netd=
ev_features_t changed[NETDEV_FEATURE_DWORDS];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 struct hns3_nic_priv *priv =3D netdev_priv(netdev);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 struct hnae3_handle *h =3D priv-&gt;ae_handle;<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool enable;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 int ret;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (changed &amp; (NETI=
F_F_GRO_HW) &amp;&amp; h-&gt;ae_algo-&gt;ops-&gt;set_gro_en) {<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable =3D !!(features &am=
p; NETIF_F_GRO_HW);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_xor(chan=
ged, netdev-&gt;features, features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (cha=
nged[0] &amp; (NETIF_F_GRO_HW) &amp;&amp; h-&gt;ae_algo-&gt;ops-&gt;set_gro=
_en) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable =
=3D !!(features[0] &amp; NETIF_F_GRO_HW);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D h-&gt;ae_algo-&gt;ops-&gt;set_gro_e=
n(h, enable);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (ret)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((changed &amp; NETIF_F_=
HW_VLAN_CTAG_RX) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((changed[0] =
&amp; NETIF_F_HW_VLAN_CTAG_RX) &amp;&amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 h-&gt;ae_algo-&gt;ops-&gt;enable_hw_strip_rxvtag) {<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable =3D !!(feature=
s &amp; NETIF_F_HW_VLAN_CTAG_RX);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 enable =3D !!(features[0] &amp; NETIF_F_HW_VLAN_CTAG_RX);=
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D h-=
&gt;ae_algo-&gt;ops-&gt;enable_hw_strip_rxvtag(h, enable);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 return ret;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 if ((changed &amp; NETIF_F_NTUPLE) &amp;&amp; h-&gt;ae_al=
go-&gt;ops-&gt;enable_fd) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 enable =3D !!(features &amp; NETIF_F_NTUPLE);<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 if ((changed[0] &amp; NETIF_F_NTUPLE) &amp;&amp; h-&gt;ae=
_algo-&gt;ops-&gt;enable_fd) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 enable =3D !!(features[0] &amp; NETIF_F_NTUPLE);<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h-&gt;ae_algo-&gt;ops-=
&gt;enable_fd(h, enable);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 if ((netdev-&gt;features &amp; NETIF_F_HW_TC) &=
gt; (features &amp; NETIF_F_HW_TC) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 if ((netdev-&gt;features[0] &amp; NETIF_F_HW_TC) &gt;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(features[0] &amp; NETIF_F_HW_TC) &amp;&a=
mp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h-&gt;ae_algo-&gt;ops=
-&gt;cls_flower_active(h)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_err(netdev,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;=
there are offloaded TC filters active,<br>&gt; cannot disable HW TC offload=
&quot;);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 re=
turn -EINVAL;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 if ((changed &amp; NETIF_F_HW_VLAN_CTAG_FILTER) &amp;&amp=
;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((changed[0] &amp; NETIF_F_HW_VLAN_CTAG=
_FILTER) &amp;&amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h-&gt=
;ae_algo-&gt;ops-&gt;enable_vlan_filter) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 enable =3D !!(features &amp; NETIF_F_HW_VLAN_CT=
AG_FILTER);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enab=
le =3D !!(features[0] &amp; NETIF_F_HW_VLAN_CTAG_FILTER);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D h-&gt;ae_algo-&gt;=
ops-&gt;enable_vlan_filter(h, enable);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netde=
v-&gt;features =3D features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features=
_copy(netdev-&gt;features, features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
eturn 0;<br>&gt; =C2=A0}<br>&gt;<br>&gt; -static netdev_features_t hns3_fea=
tures_check(struct sk_buff *skb,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct net_device *dev,<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0netdev_features_t features)<br>&gt; +static void hns3_features=
_check(struct sk_buff *skb, struct net_device *dev,<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t *features)<br>&gt; =C2=A0{<br>&gt; =C2=
=A0#define HNS3_MAX_HDR_LEN =C2=A0 =C2=A0 =C2=A0 480U<br>&gt; =C2=A0#define=
 HNS3_MAX_L4_HDR_LEN =C2=A0 =C2=A060U<br>&gt; @@ -2373,9 +2374,7 @@ static =
netdev_features_t<br>&gt; hns3_features_check(struct sk_buff *skb,<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* len of 480 bytes.<br>&gt; =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len &gt; HN=
S3_MAX_HDR_LEN)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
features &amp;=3D ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);<br>&gt; -<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 return features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~(NETIF_F_CSUM_MASK | NETI=
F_F_GSO_MASK);<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static void hns3_nic_g=
et_stats64(struct net_device *netdev,<br>&gt; @@ -3127,27 +3126,28 @@ stati=
c void hns3_set_default_feature(struct<br>&gt; net_device *netdev)<br>&gt;<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;priv_flags |=3D IFF_UNICAST_=
FLT;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_features |=3D=
 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |<br>&gt; + =C2=A0 =C2=A0 =C2=A0=
 netdev-&gt;hw_enc_features[0] |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GRO | NETIF=
_F_TSO | NETIF_F_TSO6 | NETIF_F_GSO_GRE |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNN=
EL |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_=
F_SCTP_CRC | NETIF_F_TSO_MANGLEID | NETIF_F_FRAGLIST;<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;gso_partial_features |=3D NETIF_F_GSO_G=
RE_CSUM;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features |=3D NE=
TIF_F_HW_VLAN_CTAG_FILTER |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;featu=
res[0] |=3D NETIF_F_HW_VLAN_CTAG_FILTER |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_C=
TAG_RX |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NE=
TIF_F_RXCSUM | NETIF_F_SG | NETIF_F_GSO |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6 | =
NETIF_F_GSO_GRE |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNNEL |<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_SCTP_CRC | NETIF_F_FR=
AGLIST;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features |=
=3D NETIF_F_RXCSUM |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_feature=
s[0] |=3D NETIF_F_RXCSUM |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 NETIF_F_SG | NETIF_F_GSO | NETIF_F_GRO |<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_TSO | NETIF_F_TSO6=
 | NETIF_F_GSO_GRE |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 NETIF_F_GSO_GRE_CSUM | NETIF_F_GSO_UDP_TUNNEL |<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_SCTP_CRC | NETIF_F=
_FRAGLIST;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features |=
=3D NETIF_F_HW_VLAN_CTAG_TX |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_=
features[0] |=3D NETIF_F_HW_VLAN_CTAG_TX |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_HW_VLAN_CTAG_RX |<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_RXCSUM | NETIF_F_S=
G | NETIF_F_GSO |<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 NETIF_F_GRO | NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_GSO_GRE |<br>&gt;=
 @@ -3155,48 +3155,49 @@ static void hns3_set_default_feature(struct<br>&gt=
; net_device *netdev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 NETIF_F_SCTP_CRC | NETIF_F_FRAGLIST;<br>&gt;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (ae_dev-&gt;dev_version &gt;=3D HNAE3_DEVICE_VERSION_V=
2) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;=
hw_features |=3D NETIF_F_GRO_HW;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev-&gt;features |=3D NETIF_F_GRO_HW;<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] |=3D N=
ETIF_F_GRO_HW;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
etdev-&gt;features[0] |=3D NETIF_F_GRO_HW;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(h-&gt;flags &amp; HNAE3_SUP=
PORT_VF)) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features |=3D NETIF_F_NTUPLE;<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 netdev-&gt;features |=3D NETIF_F_NTUPLE;<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_f=
eatures[0] |=3D NETIF_F_NTUPLE;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features[0] |=3D N=
ETIF_F_NTUPLE;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (test_bit(HNAE3_DEV_SUPPORT_UDP_GSO_B, ae_dev-&gt;caps)) {=
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_f=
eatures |=3D NETIF_F_GSO_UDP_L4;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev-&gt;features |=3D NETIF_F_GSO_UDP_L4;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features |=
=3D NETIF_F_GSO_UDP_L4;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 netdev-&gt;hw_enc_features |=3D NETIF_F_GSO_UDP_L4;<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] |=
=3D NETIF_F_GSO_UDP_L4;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 netdev-&gt;features[0] |=3D NETIF_F_GSO_UDP_L4;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features[0] |=3D =
NETIF_F_GSO_UDP_L4;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev-&gt;hw_enc_features[0] |=3D NETIF_F_GSO_UDP_L4;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (test=
_bit(HNAE3_DEV_SUPPORT_HW_TX_CSUM_B, ae_dev-&gt;caps)) {<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features |=3D NETIF=
_F_HW_CSUM;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netd=
ev-&gt;features |=3D NETIF_F_HW_CSUM;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features |=3D NETIF_F_HW_CSUM;<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_feat=
ures |=3D NETIF_F_HW_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev-&gt;hw_features[0] |=3D NETIF_F_HW_CSUM;<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features[0] |=3D NETI=
F_F_HW_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 net=
dev-&gt;vlan_features[0] |=3D NETIF_F_HW_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_features[0] |=3D NETIF_F_=
HW_CSUM;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features |=3D NETIF_F_=
IP_CSUM | NETIF_F_IPV6_CSUM;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev-&gt;features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;=
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan=
_features |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_features |=3D NETIF_F=
_IP_CSUM | NETIF_F_IPV6_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev-&gt;hw_features[0] |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6=
_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&g=
t;features[0] |=3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features[0] |=3D =
NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_features[0] |=3D<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_IP_CSUM | NETI=
F_F_IPV6_CSUM;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 if (test_bit(HNAE3_DEV_SUPPORT_UDP_TUNNEL_CSUM_B, ae_=
dev-&gt;caps)) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 netdev-&gt;hw_features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features |=3D NETIF_F_=
GSO_UDP_TUNNEL_CSUM;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 netdev-&gt;vlan_features |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt; -=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_feature=
s |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_=
CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt=
;features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;vlan_features[0] |=3D NETIF_F_GS=
O_UDP_TUNNEL_CSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev-&gt;hw_enc_features[0] |=3D NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
if (test_bit(HNAE3_DEV_SUPPORT_FD_FORWARD_TC_B, ae_dev-&gt;caps)) {<br>&gt;=
 - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features =
|=3D NETIF_F_HW_TC;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev-&gt;features |=3D NETIF_F_HW_TC;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] |=3D NETIF_F_HW_TC;<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;featur=
es[0] |=3D NETIF_F_HW_TC;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (test_bit(HNAE3_DEV_SUPPORT_VLAN_FLTR_M=
DF_B, ae_dev-&gt;caps))<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 netdev-&gt;hw_features |=3D NETIF_F_HW_VLAN_CTAG_FILTER;<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] =
|=3D NETIF_F_HW_VLAN_CTAG_FILTER;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0sta=
tic int hns3_alloc_buffer(struct hns3_enet_ring *ring,<br>&gt; @@ -3727,7 +=
3728,7 @@ static void hns3_rx_checksum(struct<br>&gt; hns3_enet_ring *ring,=
 struct sk_buff *skb,<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_check=
sum_none_assert(skb);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (!(netdev-&=
gt;features &amp; NETIF_F_RXCSUM))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (!(net=
dev-&gt;features[0] &amp; NETIF_F_RXCSUM))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (test_bit(HNS3_NIC_STATE_RXD_ADV_LAYOUT_ENABLE, &amp;priv-&gt=
;state))<br>&gt; @@ -4024,7 +4025,7 @@ static int hns3_handle_bdinfo(struct=
<br>&gt; hns3_enet_ring *ring, struct sk_buff *skb)<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0* ot_vlan_tag in two layer tag case, and stored at vlan=
_tag<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* in one layer tag case.<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if=
 (netdev-&gt;features &amp; NETIF_F_HW_VLAN_CTAG_RX) {<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 if (netdev-&gt;features[0] &amp; NETIF_F_HW_VLAN_CTAG_RX) {<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 vlan_tag;<b=
r>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
hns3_parse_vlan_tag(ring, desc, l234info, &amp;vlan_tag))<br>&gt; diff --gi=
t a/drivers/net/ethernet/huawei/hinic/hinic_main.c<br>&gt; b/drivers/net/et=
hernet/huawei/hinic/hinic_main.c<br>&gt; index 405ee4d..b193ee4 100644<br>&=
gt; --- a/drivers/net/ethernet/huawei/hinic/hinic_main.c<br>&gt; +++ b/driv=
ers/net/ethernet/huawei/hinic/hinic_main.c<br>&gt; @@ -79,8 +79,8 @@ MODULE=
_PARM_DESC(rx_weight, &quot;Number Rx packets for<br>&gt; NAPI budget (defa=
ult=3D64)&quot;);<br>&gt; =C2=A0static int change_mac_addr(struct net_devic=
e *netdev, const u8 *addr);<br>&gt;<br>&gt; =C2=A0static int set_features(s=
truct hinic_dev *nic_dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t pre_features,<br>&=
gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 netdev_features_t features, bool force_change);<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netde=
v_features_t *pre_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t *features, bool=
 force_change);<br>&gt;<br>&gt; =C2=A0static void update_rx_stats(struct hi=
nic_dev *nic_dev, struct hinic_rxq *rxq)<br>&gt; =C2=A0{<br>&gt; @@ -880,7 =
+880,7 @@ static void hinic_get_stats64(struct net_device *netdev,<br>&gt; =
=C2=A0}<br>&gt;<br>&gt; =C2=A0static int hinic_set_features(struct net_devi=
ce *netdev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t features)<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t *features)<br>&gt; =C2=A0=
{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct hinic_dev *nic_dev =3D netdev_=
priv(netdev);<br>&gt;<br>&gt; @@ -888,18 +888,16 @@ static int hinic_set_fe=
atures(struct net_device *netdev,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features=
, false);<br>&gt; =C2=A0}<br>&gt;<br>&gt; -static netdev_features_t hinic_f=
ix_features(struct net_device *netdev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t features=
)<br>&gt; +static void hinic_fix_features(struct net_device *netdev,<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_features_t features)<br>&gt; =C2=
=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct hinic_dev *nic_dev =3D netd=
ev_priv(netdev);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* If Rx check=
sum is disabled, then LRO should also be disabled */<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 if (!(features &amp; NETIF_F_RXCSUM)) {<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 if (!(features[0] &amp; NETIF_F_RXCSUM)) {<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netif_info(nic_dev, drv, netdev, &qu=
ot;disabling LRO as<br>&gt; RXCSUM is off\n&quot;);<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_LRO;<br>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~N=
ETIF_F_LRO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; -<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 return features;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0st=
atic const struct net_device_ops hinic_netdev_ops =3D {<br>&gt; @@ -943,19 =
+941,22 @@ static const struct net_device_ops hinicvf_netdev_ops =3D {<br>&=
gt;<br>&gt; =C2=A0static void netdev_features_init(struct net_device *netde=
v)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features =
=3D NETIF_F_SG | NETIF_F_HIGHDMA | NETIF_F_IP_CSUM |<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 NETIF_F_IPV6_CSUM | NETIF_F_TSO | NETIF_F_TSO6 |<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_RXCSUM | NETIF_F_LRO |<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 NETIF_F_HW_VLAN_CTAG_TX |<br>&gt; NETIF_F_HW_VLAN_CTAG_RX=
 |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_GSO_UDP_TUNNEL |<br>&gt; NETIF_=
F_GSO_UDP_TUNNEL_CSUM;<br>&gt; -<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;=
vlan_features =3D netdev-&gt;hw_features;<br>&gt; -<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 netdev-&gt;features =3D netdev-&gt;hw_features | NETIF_F_HW_VLAN_CT=
AG_FILTER;<br>&gt; -<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_featu=
res =3D NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM<br>&gt; | NETIF_F_SCTP_CRC |<br=
>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_SG | NETIF_F_TSO |<br=
>&gt; NETIF_F_TSO6 | NETIF_F_TSO_ECN |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 NETIF_F_GSO_UDP_TUNNEL_CSUM |<br>&gt; NETIF_F_GSO_UDP_TUNNEL;=
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] =3D<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N=
ETIF_F_SG | NETIF_F_HIGHDMA | NETIF_F_IP_CSUM |<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_IPV6_CS=
UM | NETIF_F_TSO | NETIF_F_TSO6 |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_RXCSUM | NETIF_F_LRO =
|<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX |<br>&gt; +=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NETIF_F_GSO_UDP_TUNNEL | NETIF_F_GSO_UDP_TUNNEL_CSUM;<br>&gt; +<br>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 netdev_features_copy(netdev-&gt;vlan_features, netd=
ev-&gt;hw_features);<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;fe=
atures[0] =3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_features[0] | NETIF_F_HW_VLAN_CTA=
G_FILTER;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_featur=
es[0] =3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_=
F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_SCTP_CRC |<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 =
| NETIF_F_TSO_ECN |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 NETIF_F_GSO_UDP_TUNNEL_CSUM | NETIF_F_GSO_UDP_TUNNEL;<br>&gt; =C2=A0}<b=
r>&gt;<br>&gt; =C2=A0static void hinic_refresh_nic_cfg(struct hinic_dev *ni=
c_dev)<br>&gt; @@ -1072,21 +1073,22 @@ static void link_err_event(void *han=
dle,<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static int set_features(struct h=
inic_dev *nic_dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t pre_features,<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev_features_t features, bool force_change)<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_featu=
res_t *pre_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t *features, bool force_=
change)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t ch=
anged =3D force_change ? ~0 : pre_features ^ features;<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t failed_features[NETDEV_FEATURE_DWORDS] =3D {0}=
;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 csum_en =3D HINIC_RX_CSUM_OFFLOAD=
_EN;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t failed_features =3D 0=
;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t changed;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 int ret =3D 0;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int=
 err =3D 0;<br>&gt;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 changed =3D force_change=
 ? ~0 : pre_features[0] ^ features[0];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
if (changed &amp; NETIF_F_TSO) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ret =3D hinic_port_set_tso(nic_dev, (features &amp; NETIF=
_F_TSO) ?<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =
=3D hinic_port_set_tso(nic_dev, (features[0] &amp; NETIF_F_TSO) ?<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HI=
NIC_TSO_ENABLE : HINIC_TSO_DISABLE);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D ret;<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 failed_features |=3D NETIF_F_TSO;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 failed_features[0] |=
=3D NETIF_F_TSO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; @@ -1094,33 =
+1096,34 @@ static int set_features(struct hinic_dev *nic_dev,<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D hinic_set_rx_c=
sum_offload(nic_dev, csum_en);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (ret) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D ret;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ailed_features |=3D NETIF_F_RXCSUM;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 failed_features[0] |=3D NE=
TIF_F_RXCSUM;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (changed &amp; NETIF_F_LRO) {<br>&gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D hinic_set_rx_lro_state(nic_dev,=
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0!!(features &amp; NETIF_F_LRO),<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!!(featur=
es[0] &amp; NETIF_F_LRO),<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HINIC_LRO_RX_TIMER_DEFAULT,<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HINIC_LRO_MAX_WQE_NUM_DEFAULT);<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret) {<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D =
ret;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 failed_features |=3D NETIF_F_LRO;<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 failed_feat=
ures[0] |=3D NETIF_F_LRO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (changed &amp; NETIF_F_HW_VLAN_CTAG_RX) {<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D hinic_se=
t_rx_vlan_offload(nic_dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !!(features &amp;<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 !!(features[0] &amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0NETIF_F_HW_VLAN_CTAG_RX));<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (ret) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D ret;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ailed_features |=3D NETIF_F_HW_VLAN_CTAG_RX;<br>&gt; + =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 failed_features[0]=
 |=3D NETIF_F_HW_VLAN_CTAG_RX;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (err) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 nic_dev-&gt;netdev-&gt;features =3D features ^ fai=
led_features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ne=
tdev_features_xor(nic_dev-&gt;netdev-&gt;features, features,<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 failed_features)<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EIO;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; diff --git a/drivers/net/etherne=
t/huawei/hinic/hinic_rx.c<br>&gt; b/drivers/net/ethernet/huawei/hinic/hinic=
_rx.c<br>&gt; index fed3b6b..452a91b 100644<br>&gt; --- a/drivers/net/ether=
net/huawei/hinic/hinic_rx.c<br>&gt; +++ b/drivers/net/ethernet/huawei/hinic=
/hinic_rx.c<br>&gt; @@ -106,7 +106,7 @@ static void rx_csum(struct hinic_rx=
q *rxq, u32 status,<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 csum_err =
=3D HINIC_RQ_CQE_STATUS_GET(status, CSUM_ERR);<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 if (!(netdev-&gt;features &amp; NETIF_F_RXCSUM))<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 if (!(netdev-&gt;features[0] &amp; NETIF_F_RXCSUM))<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>&gt;<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!csum_err) {<br>&gt; @@ -411,7 +411=
,7 @@ static int rxq_recv(struct hinic_rxq *rxq, int budget)<br>&gt;<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 offload_type =3D =
be32_to_cpu(cqe-&gt;offload_type);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 vlan_len =3D be32_to_cpu(cqe-&gt;len);<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((netdev-&gt;features &=
amp; NETIF_F_HW_VLAN_CTAG_RX) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if ((netdev-&gt;features[0] &amp; NETIF_F_HW_VLAN_=
CTAG_RX) &amp;&amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 HINIC_GET_RX_VLAN_OFFLOAD_EN(offload_type)) {<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 vid =3D HINIC_GET_RX_VLAN_TAG(vlan_len);<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _=
_vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);<br>&gt; diff --git a/i=
nclude/linux/if_vlan.h b/include/linux/if_vlan.h<br>&gt; index 41a5183..417=
3464 100644<br>&gt; --- a/include/linux/if_vlan.h<br>&gt; +++ b/include/lin=
ux/if_vlan.h<br>&gt; @@ -563,7 +563,7 @@ static inline int __vlan_hwaccel_g=
et_tag(const<br>&gt; struct sk_buff *skb,<br>&gt; =C2=A0 */<br>&gt; =C2=A0s=
tatic inline int vlan_get_tag(const struct sk_buff *skb, u16 *vlan_tci)<br>=
&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (skb-&gt;dev-&gt;features &a=
mp; NETIF_F_HW_VLAN_CTAG_TX) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (skb-&gt;d=
ev-&gt;features[0] &amp; NETIF_F_HW_VLAN_CTAG_TX) {<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return __vlan_hwaccel_get_tag(skb=
, vlan_tci);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return __vlan_get_tag(skb,=
 vlan_tci);<br>&gt; diff --git a/include/linux/netdev_features.h b/include/=
linux/netdev_features.h<br>&gt; index 2c6b9e4..9184963 100644<br>&gt; --- a=
/include/linux/netdev_features.h<br>&gt; +++ b/include/linux/netdev_feature=
s.h<br>&gt; @@ -102,7 +102,8 @@ enum {<br>&gt; =C2=A0};<br>&gt;<br>&gt; =C2=
=A0/* copy&#39;n&#39;paste compression ;) */<br>&gt; -#define __NETIF_F_BIT=
(bit) =C2=A0 =C2=A0 ((netdev_features_t)1 &lt;&lt; (bit))<br>&gt; +#define =
__NETIF_F_BIT(bit) =C2=A0 =C2=A0 ((netdev_features_t)1 &lt;&lt; (bit &amp; =
0x3F))<br>&gt; +<br>&gt; =C2=A0#define __NETIF_F(name) =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__NETIF_F_BIT(NETIF_F_##name##_BIT)<br>&=
gt;<br>&gt; =C2=A0#define NETIF_F_FCOE_CRC =C2=A0 =C2=A0 =C2=A0 __NETIF_F(F=
COE_CRC)<br>&gt; @@ -169,6 +170,8 @@ enum {<br>&gt; =C2=A0#define NETIF_F_H=
W_HSR_FWD =C2=A0 =C2=A0 __NETIF_F(HW_HSR_FWD)<br>&gt; =C2=A0#define NETIF_F=
_HW_HSR_DUP =C2=A0 =C2=A0 __NETIF_F(HW_HSR_DUP)<br>&gt;<br>&gt; +#define NE=
TDEV_FEATURE_DWORDS =C2=A0DIV_ROUND_UP(NETDEV_FEATURE_COUNT, 64)<br>&gt; +<=
br>&gt; =C2=A0/* Finds the next feature with the highest number of the rang=
e of start till 0.<br>&gt; =C2=A0 */<br>&gt; =C2=A0static inline int find_n=
ext_netdev_feature(u64 feature, unsigned long start)<br>&gt; @@ -185,8 +188=
,7 @@ static inline int find_next_netdev_feature(u64<br>&gt; feature, unsig=
ned long start)<br>&gt; =C2=A0 * mask_addr should be a u64 and bit an int<b=
r>&gt; =C2=A0 */<br>&gt; =C2=A0#define for_each_netdev_feature(mask_addr, b=
it)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 for ((bit) =3D find_next_netdev_feature((mask_addr), =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETDEV_FEATURE_COUNT); =C2=
=A0 =C2=A0\<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for ((bit) =3D find_next_netdev_=
feature((mask_addr), 64); =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(bit) &gt;=3D 0; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(bit) =3D find_next=
_netdev_feature((mask_addr), (bit) - 1))<br>&gt;<br>&gt; @@ -195,11 +197,6 =
@@ static inline int find_next_netdev_feature(u64<br>&gt; feature, unsigned=
 long start)<br>&gt; =C2=A0#define NETIF_F_NEVER_CHANGE =C2=A0 (NETIF_F_VLA=
N_CHALLENGED | \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_=
F_LLTX | NETIF_F_NETNS_LOCAL)<br>&gt;<br>&gt; -/* remember that ((t)1 &lt;&=
lt; t_BITS) is undefined in C99 */<br>&gt; -#define NETIF_F_ETHTOOL_BITS =
=C2=A0 ((__NETIF_F_BIT(NETDEV_FEATURE_COUNT - 1) | \<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (__NETIF_F_BIT(NETDEV_FEATURE_COUNT =
- 1) - 1)) &amp; \<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~NETIF_F_NEVER_CHANGE)<br>&gt; -<br>&gt; =C2=A0/* Segmentation offload =
feature mask */<br>&gt; =C2=A0#define NETIF_F_GSO_MASK =C2=A0 =C2=A0 =C2=A0=
 (__NETIF_F_BIT(NETIF_F_GSO_LAST + 1) - \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __NETIF_F_BIT(NETIF_F_GSO_SHIFT))<br>&gt; @=
@ -261,4 +258,96 @@ static inline int find_next_netdev_feature(u64<br>&gt; =
feature, unsigned long start)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0NETIF_F_GSO_UDP_TUNNEL | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_G=
SO_UDP_TUNNEL_CSUM)<br>&gt;<br>&gt; +static inline void netdev_features_cop=
y(netdev_features_t *dst,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 const netdev_features_t *src)<br>&gt; +{<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
for (i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D src[i];<br>&gt; +}<br>&gt; +<=
br>&gt; +static inline void netdev_features_and(netdev_features_t *dst,<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const net=
dev_features_t *a,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0const netdev_features_t *b)<br>&gt; +{<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D=
 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D a[i] &amp; b[i];<br>&gt; +}<br>&gt; +<b=
r>&gt; +static inline void netdev_features_andnot(netdev_features_t *dst,<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
onst netdev_features_t *a,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const netdev_features_t *b)<br>&gt; +{<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 for (i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D a[i] &amp; ~b[i];<br>&=
gt; +}<br>&gt; +<br>&gt; +static inline void netdev_features_or(netdev_feat=
ures_t *dst,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
onst netdev_features_t *a,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 const netdev_features_t *b)<br>&gt; +{<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =
=3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D a[i] | b[i];<br>&gt; +}<br>&gt; +<br=
>&gt; +static inline void netdev_features_xor(netdev_features_t *dst,<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const netdev_=
features_t *a,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0const netdev_features_t *b)<br>&gt; +{<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D =
0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D a[i] ^ b[i];<br>&gt; +}<br>&gt; +<br>&gt; =
+static inline void netdev_features_set(netdev_features_t *dst,<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int bit=
)<br>&gt; +{<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dst[bit / 64] |=3D __NETIF_F_BI=
T(bit);<br>&gt; +}<br>&gt; +<br>&gt; +static inline bool netdev_features_eq=
ual(const netdev_features_t *a,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const netdev_features_t *b)<br>&gt; +{<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 for (i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (a[i] !=3D b[i])<br>&gt; +=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 return false;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 return true;<br>=
&gt; +}<br>&gt; +<br>&gt; +static inline void netdev_features_empty(netdev_=
features_t *src)<br>&gt; +{<br>&gt; + =C2=A0 =C2=A0 =C2=A0 unsigned int i;<=
br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; NETDEV_FEATUR=
E_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
f (src[i])<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 return true;<br>&gt; +}<br>&gt; +<br>&gt; +static inline void netdev=
_features_ethtool_bits(netdev_features_t *dst)<br>&gt; +{<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 unsigned int i;<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for =
(i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++) {<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (NETDEV_FEATURE_COUNT &gt;=3D (i + 1) * =
64)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dst[i] =3D GENMASK_ULL(63, 0);<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dst[i] =3D GENMASK_ULL=
(NETDEV_FEATURE_COUNT - i * 64,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0);<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 }<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dst[0] &amp;=3D ~NE=
TIF_F_NEVER_CHANGE;<br>&gt; +}<br>&gt; +<br>&gt; =C2=A0#endif /* _LINUX_NET=
DEV_FEATURES_H */<br>&gt; diff --git a/include/linux/netdevice.h b/include/=
linux/netdevice.h<br>&gt; index eaf5bb0..4a29487 100644<br>&gt; --- a/inclu=
de/linux/netdevice.h<br>&gt; +++ b/include/linux/netdevice.h<br>&gt; @@ -13=
47,9 +1347,9 @@ struct net_device_ops {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 int =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
(*ndo_stop)(struct net_device *dev);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ne=
tdev_tx_t =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (*ndo_start_xmit)(struc=
t sk_buff *skb,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *dev=
);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 (*=
ndo_features_check)(struct sk_buff *skb,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 voi=
d =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(*nd=
o_features_check)(struct sk_buff *skb,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 struct net_device *dev,<br>&gt; -<br>&gt; netdev_features_t f=
eatures);<br>&gt; +<br>&gt; netdev_features_t *features);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 u16 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (*ndo_select_queue)(struct net_device *dev,<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct sk_buff *skb,<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *sb_dev);<br>&gt; @@ -1467,10 +1=
467,10 @@ struct net_device_ops {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bool all_slaves);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net=
_device* =C2=A0 =C2=A0 =C2=A0(*ndo_sk_get_lower_dev)(struct net_device *dev=
,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct sock *sk=
);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 (*=
ndo_fix_features)(struct net_device *dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 netdev_features_t features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 void =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(*ndo_fix=
_features)(struct net_device *dev,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
etdev_features_t<br>&gt; *features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 in=
t =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (*n=
do_set_features)(struct net_device *dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev_features_t features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netde=
v_features_t<br>&gt; *features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (*ndo=
_neigh_construct)(struct net_device *dev,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0struct neighbour *n);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 void =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(*ndo_neigh_destroy)(struct net_device *dev,<br>&gt; @@ -1978,12 +197=
8,12 @@ struct net_device {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned sh=
ort =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0needed_headroom;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 unsigned short =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0needed_t=
ailroom;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =
=C2=A0 =C2=A0 features;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t =
=C2=A0 =C2=A0 =C2=A0 hw_features;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_fea=
tures_t =C2=A0 =C2=A0 =C2=A0 wanted_features;<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 vlan_features;<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 hw_enc_features;<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 mpls_featu=
res;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 =
features[NETDEV_FEATURE_DWORDS];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_feat=
ures_t =C2=A0 =C2=A0 =C2=A0 hw_features[NETDEV_FEATURE_DWORDS];<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 wanted_features=
[NETDEV_FEATURE_DWORDS];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t =
=C2=A0 =C2=A0 =C2=A0 vlan_features[NETDEV_FEATURE_DWORDS];<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 hw_enc_features[NETDE=
V_FEATURE_DWORDS];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t =C2=A0 =
=C2=A0 =C2=A0 mpls_features[NETDEV_FEATURE_DWORDS];<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t =C2=A0 =C2=A0 =C2=A0 gso_partial_features;<=
br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0min_mtu;<br>&gt; @@ -4986,10 +4986,11 @@ static inl=
ine netdev_features_t<br>&gt; netdev_intersect_features(netdev_features_t f=
1,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return f1 &amp; f2;<br>&gt; =C2=A0}<=
br>&gt;<br>&gt; -static inline netdev_features_t netdev_get_wanted_features=
(<br>&gt; - =C2=A0 =C2=A0 =C2=A0 struct net_device *dev)<br>&gt; +static in=
line void netdev_get_wanted_features(struct net_device *dev,<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 netdev_features_t *wanted)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 return (dev-&gt;features &amp; ~dev-&gt;hw_features) | dev-&gt;wanted_f=
eatures;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(wanted, dev-=
&gt;features, dev-&gt;hw_features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_f=
eatures_or(wanted, wanted, dev-&gt;wanted_features);<br>&gt; =C2=A0}<br>&gt=
; =C2=A0netdev_features_t netdev_increment_features(netdev_features_t all,<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t one, netdev_features_=
t mask);<br>&gt; @@ -5014,7 +5015,7 @@ void netif_stacked_transfer_operstat=
e(const<br>&gt; struct net_device *rootdev,<br>&gt; =C2=A0netdev_features_t=
 passthru_features_check(struct sk_buff *skb,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *dev=
,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t features);<br>&gt; -netdev_features_t netif_sk=
b_features(struct sk_buff *skb);<br>&gt; +void netif_skb_features(struct sk=
_buff *skb, netdev_features_t *features);<br>&gt;<br>&gt; =C2=A0static inli=
ne bool net_gso_ok(netdev_features_t features, int gso_type)<br>&gt; =C2=A0=
{<br>&gt; diff --git a/net/8021q/vlan.c b/net/8021q/vlan.c<br>&gt; index 4c=
df841..7d77692 100644<br>&gt; --- a/net/8021q/vlan.c<br>&gt; +++ b/net/8021=
q/vlan.c<br>&gt; @@ -328,7 +328,7 @@ static void vlan_transfer_features(str=
uct net_device *dev,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 vlandev-&gt;gso_ma=
x_size =3D dev-&gt;gso_max_size;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 vlande=
v-&gt;gso_max_segs =3D dev-&gt;gso_max_segs;<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 if (vlan_hw_offload_capable(dev-&gt;features, vlan-&gt;vlan_prot=
o))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (vlan_hw_offload_capable(dev-&gt;feat=
ures[0], vlan-&gt;vlan_proto))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 vlandev-&gt;hard_header_len =3D dev-&gt;hard_header_le=
n;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vlandev-&gt;hard_header_len =3D dev-&gt;=
hard_header_len + VLAN_HLEN;<br>&gt; @@ -339,7 +339,7 @@ static void vlan_t=
ransfer_features(struct net_device *dev,<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 vlandev-&gt;priv_flags &amp;=3D ~IFF_XMIT_DST_RELEASE;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vlandev-&gt;priv_flags |=3D (vlan-&gt;real_dev-=
&gt;priv_flags &amp;<br>&gt; IFF_XMIT_DST_RELEASE);<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 vlandev-&gt;hw_enc_features =3D vlan_tnl_features(vlan-&gt;real_dev=
);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 vlandev-&gt;hw_enc_features[0] =3D vlan_t=
nl_features(vlan-&gt;real_dev);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 netdev_update_features(vlandev);<br>&gt; =C2=A0}<br>&gt; diff --git a/net/=
8021q/vlan.h b/net/8021q/vlan.h<br>&gt; index 1a705a4..4e784a1 100644<br>&g=
t; --- a/net/8021q/vlan.h<br>&gt; +++ b/net/8021q/vlan.h<br>&gt; @@ -107,7 =
+107,7 @@ static inline netdev_features_t<br>&gt; vlan_tnl_features(struct =
net_device *real_dev)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
etdev_features_t ret;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 ret =3D real_d=
ev-&gt;hw_enc_features &amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ret =3D real_de=
v-&gt;hw_enc_features[0] &amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (NETIF_F_CSUM_MASK | NETIF_F_GSO_SOFTWARE |<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_GSO_ENCAP_ALL);<br>=
&gt;<br>&gt; diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c<br>&g=
t; index a0367b3..6d49761 100644<br>&gt; --- a/net/8021q/vlan_dev.c<br>&gt;=
 +++ b/net/8021q/vlan_dev.c<br>&gt; @@ -566,21 +566,21 @@ static int vlan_d=
ev_init(struct net_device *dev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (vla=
n-&gt;flags &amp; VLAN_FLAG_BRIDGE_BINDING)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;state |=3D (1 &lt;&lt; __LINK_ST=
ATE_NOCARRIER);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features =
=3D NETIF_F_HW_CSUM | NETIF_F_SG |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_FRAGL=
IST | NETIF_F_GSO_SOFTWARE |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_GSO_ENCAP_AL=
L |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_HIGHDMA | NETIF_F_SCTP_CRC |<br>&gt;=
 - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0NETIF_F_ALL_FCOE;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&g=
t;hw_features[0] =3D NETIF_F_HW_CSUM | NETIF_F_SG |<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 NETIF_F_FRAGLIST | NETIF_F_GSO_SOFTWARE |<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 NETIF_F_GSO_ENCAP_ALL |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETI=
F_F_HIGHDMA | NETIF_F_SCTP_CRC |<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_=
ALL_FCOE;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;features |=3D dev-=
&gt;hw_features | NETIF_F_LLTX;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;feat=
ures[0] |=3D dev-&gt;hw_features[0] | NETIF_F_LLTX;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 dev-&gt;gso_max_size =3D real_dev-&gt;gso_max_size;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;gso_max_segs =3D real_dev-&gt;gso_max_s=
egs;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;features &amp; NETIF_F_VLAN=
_FEATURES)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;features[0] &amp; NET=
IF_F_VLAN_FEATURES)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev_warn(real_dev, &quot;VLAN features are set<br>&gt; incorr=
ectly.=C2=A0 Q-in-Q configurations may not work correctly.\n&quot;);<br>&gt=
;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features =3D real_dev-&gt;vla=
n_features &amp; ~NETIF_F_ALL_FCOE;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;=
hw_enc_features =3D vlan_tnl_features(real_dev);<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 dev-&gt;mpls_features =3D real_dev-&gt;mpls_features;<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features[0] =3D real_dev-&gt;vlan_features[0=
] &amp; ~NETIF_F_ALL_FCOE;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_enc_fe=
atures[0] =3D vlan_tnl_features(real_dev);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 n=
etdev_features_copy(dev-&gt;mpls_features, real_dev-&gt;mpls_features);<br>=
&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* ipv6 shared card related stuff =
*/<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;dev_id =3D real_dev-&gt;dev_=
id;<br>&gt; @@ -633,27 +633,30 @@ void vlan_dev_uninit(struct net_device *d=
ev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0}<br>&gt;<br>&gt; -=
static netdev_features_t vlan_dev_fix_features(struct net_device *dev,<br>&=
gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t features)<br>&gt; +static void=
 vlan_dev_fix_features(struct net_device *dev,<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 netdev_features_t *features)<br>&gt; =C2=A0{<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *real_dev =3D vlan_dev_priv(d=
ev)-&gt;real_dev;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t old_feat=
ures =3D features;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t lower_f=
eatures;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t lower_features[NE=
TDEV_FEATURE_DWORDS];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t old_=
features[NETDEV_FEATURE_DWORDS];<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 low=
er_features =3D netdev_intersect_features((real_dev-&gt;vlan_features |<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 NETIF_F_RXCSUM),<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0real_dev-&gt;features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_=
features_copy(lower_features, features);<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 lower_features[0] =3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_intersect_features((real_dev-&gt;vlan_features[0] |<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0NETIF_F_RXCSUM),<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 real_dev-&gt;features[0]);<br>&gt;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* Add HW_CSUM setting to preserve user ability to con=
trol<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* checksum offload on the vl=
an device.<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 if (lower_features &amp; (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))=
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lower_features =
|=3D NETIF_F_HW_CSUM;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 features =3D netdev_in=
tersect_features(features, lower_features);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
features |=3D old_features &amp; (NETIF_F_SOFT_FEATURES |<br>&gt; NETIF_F_G=
SO_SOFTWARE);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 features |=3D NETIF_F_LLTX;<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 if (lower_features[0] &amp; (NETIF_F_IP_CSUM |=
 NETIF_F_IPV6_CSUM))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 lower_features[0] |=3D NETIF_F_HW_CSUM;<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 return features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 features[0] =3D =
netdev_intersect_features(features[0], lower_features[0]);<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 features[0] |=3D old_features[0] &amp;<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (NETIF_F=
_SOFT_FEATURES | NETIF_F_GSO_SOFTWARE);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 feat=
ures[0] |=3D NETIF_F_LLTX;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static int=
 vlan_ethtool_get_link_ksettings(struct net_device *dev,<br>&gt; diff --git=
 a/net/core/dev.c b/net/core/dev.c<br>&gt; index c253c2a..7066bf3 100644<br=
>&gt; --- a/net/core/dev.c<br>&gt; +++ b/net/core/dev.c<br>&gt; @@ -1765,7 =
+1765,7 @@ void dev_disable_lro(struct net_device *dev)<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features &amp;=3D ~NETIF_F_LRO;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_update_features(dev);<br>&gt;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 if (unlikely(dev-&gt;features &amp; NETIF_F_LRO))<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 if (unlikely(dev-&gt;features[0] &amp; NETIF_F_L=
RO))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev=
_WARN(dev, &quot;failed to disable LRO!\n&quot;);<br>&gt;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 netdev_for_each_lower_dev(dev, lower_dev, iter)<br>&gt=
; @@ -1786,7 +1786,7 @@ static void dev_disable_gro_hw(struct net_device *d=
ev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features &amp;=3D ~N=
ETIF_F_GRO_HW;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_update_features(d=
ev);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (unlikely(dev-&gt;features &=
amp; NETIF_F_GRO_HW))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (unlikely(dev-&gt;f=
eatures[0] &amp; NETIF_F_GRO_HW))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev_WARN(dev, &quot;failed to disable GRO_HW!\n=
&quot;);<br>&gt; =C2=A0}<br>&gt;<br>&gt; @@ -3276,7 +3276,7 @@ static void =
skb_warn_bad_offload(const struct<br>&gt; sk_buff *skb)<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_dump(KERN_WARNI=
NG, skb, false);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 WARN(1, &quot;%s: caps=
=3D(%pNF, %pNF)\n&quot;,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0name, dev ? &amp;dev-&gt;features : &amp;null_features,<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name, dev ? &amp;dev-&gt;features[0] : &=
amp;null_features,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
skb-&gt;sk ? &amp;skb-&gt;sk-&gt;sk_route_caps : &amp;null_features);<br>&g=
t; =C2=A0}<br>&gt;<br>&gt; @@ -3463,7 +3463,8 @@ struct sk_buff *__skb_gso_=
segment(struct sk_buff *skb,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t partial_features =3D NETIF_F_GSO_ROBUST=
;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ne=
t_device *dev =3D skb-&gt;dev;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 partial_features |=3D dev-&gt;features &amp; dev-&=
gt;gso_partial_features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 partial_features |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d=
ev-&gt;features[0] &amp; dev-&gt;gso_partial_features;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!skb_gso_ok(skb, features=
 | partial_features))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_GSO_PARTI=
AL;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; @@ -3508,7 +3509,7 @@ sta=
tic int illegal_highdma(struct net_device<br>&gt; *dev, struct sk_buff *skb=
)<br>&gt; =C2=A0#ifdef CONFIG_HIGHMEM<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
nt i;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (!(dev-&gt;features &amp; N=
ETIF_F_HIGHDMA)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (!(dev-&gt;features[0]=
 &amp; NETIF_F_HIGHDMA)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; skb_shinfo(skb)-&gt;nr_frags; i++) {=
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 skb_frag_t *frag =3D &amp;skb_shinfo(skb)-&gt;frags[i];<b=
r>&gt;<br>&gt; @@ -3612,34 +3613,33 @@ static netdev_features_t<br>&gt; gso=
_features_check(const struct sk_buff *skb,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 return features;<br>&gt; =C2=A0}<br>&gt;<br>&gt; -netdev_features_t net=
if_skb_features(struct sk_buff *skb)<br>&gt; +void netif_skb_features(struc=
t sk_buff *skb, netdev_features_t *features)<br>&gt; =C2=A0{<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 struct net_device *dev =3D skb-&gt;dev;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t features =3D dev-&gt;features;<br>&gt;<=
br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_copy(features, dev-&gt;featu=
res);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb_is_gso(skb))<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features =3D gso_features_=
check(skb, dev, features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 features[0] =3D gso_features_check(skb, dev, features[0]);<br>&g=
t;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* If encapsulation offload request,=
 verify we are testing<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* hardware=
 encapsulation features instead of standard<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0* features for the netdev<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0*/<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb-&gt;encapsulation)<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D d=
ev-&gt;hw_enc_features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 netdev_features_and(features, dev-&gt;hw_enc_features);<br>&gt;<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb_vlan_tagged(skb))<br>&gt; - =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features =3D netdev_intersect_fe=
atures(features,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev-&gt;vlan_fea=
tures |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_HW_VLAN_CTAG_TX=
 |<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_HW_VLAN_STAG_TX);<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] =3D netd=
ev_intersect_features(features[0],<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 dev-&gt;vlan_features[0] |<br>&gt; +<br>&gt; NETIF_F_HW_VLAN_=
CTAG_TX |<br>&gt; +<br>&gt; NETIF_F_HW_VLAN_STAG_TX);<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;netdev_ops-&gt;ndo_features_check)<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D d=
ev-&gt;netdev_ops-&gt;ndo_features_check(skb, dev,<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features);<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;netdev_ops-&gt;n=
do_features_check(skb, dev, features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
else<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &a=
mp;=3D dflt_features_check(skb, dev, features);<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D dflt_features_check(sk=
b, dev, features[0]);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return harmoni=
ze_features(skb, features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 features[0] =3D =
harmonize_features(skb, features[0]);<br>&gt; =C2=A0}<br>&gt; =C2=A0EXPORT_=
SYMBOL(netif_skb_features);<br>&gt;<br>&gt; @@ -3722,10 +3722,10 @@ EXPORT_=
SYMBOL(skb_csum_hwoffload_help);<br>&gt;<br>&gt; =C2=A0static struct sk_buf=
f *validate_xmit_skb(struct sk_buff *skb, struct<br>&gt; net_device *dev, b=
ool *again)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_=
t features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t features[NETDE=
V_FEATURE_DWORDS];<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 features =3D neti=
f_skb_features(skb);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 skb =3D validate_xmit_v=
lan(skb, features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netif_skb_features(skb, =
features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 skb =3D validate_xmit_vlan(skb, f=
eatures[0]);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unlikely(!skb))<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto out_null;<br=
>&gt;<br>&gt; @@ -3733,10 +3733,10 @@ static struct sk_buff<br>&gt; *valida=
te_xmit_skb(struct sk_buff *skb, struct net_device<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (unlikely(!skb))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 goto out_null;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 if (netif_needs_gso(skb, features)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if=
 (netif_needs_gso(skb, features[0])) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct sk_buff *segs;<br>&gt;<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 segs =3D skb_gso_segment(skb, fea=
tures);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 segs =3D=
 skb_gso_segment(skb, features[0]);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ERR(segs)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto out_kfr=
ee_skb;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } e=
lse if (segs) {<br>&gt; @@ -3744,7 +3744,7 @@ static struct sk_buff *valida=
te_xmit_skb(struct<br>&gt; sk_buff *skb, struct net_device<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 skb =3D segs;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb_needs_linearize(skb, feature=
s) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if=
 (skb_needs_linearize(skb, features[0]) &amp;&amp;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __skb_linearize(skb=
))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 goto out_kfree_skb;<br>&gt;<br>&gt; @@ -3759,12 +3759,=
12 @@ static struct sk_buff<br>&gt; *validate_xmit_skb(struct sk_buff *skb,=
 struct net_device<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 skb_set_transport_header(skb,<br>&gt;<br>&gt; skb_checksum_st=
art_offset(skb));<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (skb_csum_hwoffload_help(skb, features))=
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (skb_csum_hwoffload_help(skb, features[0]))<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto out_kfree_skb;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 skb =3D validate_xmit_xfrm(=
skb, features, again);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 skb =3D validate_xmit=
_xfrm(skb, features[0], again);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return skb;<br>&gt;<br>&gt; @@ -4429,7 +4429,7 @@ set_rps_cpu(struct net_d=
evice *dev, struct sk_buff *skb,<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Should we steer this flow to a different=
 hardware queue? */<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (!skb_rx_queue_recorded(skb) || !dev-&gt;rx_cpu_rmap ||<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(dev-&=
gt;features &amp; NETIF_F_NTUPLE))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(dev-&gt;features[0] &amp; NETIF_F_NTUP=
LE))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 goto out;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 rxq_index =3D cpu_rmap_lookup_index(dev-&gt;rx_cpu_rma=
p, next_cpu);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (rxq_index =3D=3D skb_get_rx_queue(skb))<br>&gt; @@ -9799,171 +9799,=
179 @@ static void net_set_todo(struct net_device *dev)<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dev_net(dev)-&gt;dev_unreg_count++;<br>&gt; =C2=A0}<br>&g=
t;<br>&gt; -static netdev_features_t netdev_sync_upper_features(struct net_=
device *lower,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 struct net_device *upper, net=
dev_features_t features)<br>&gt; +static void netdev_sync_upper_features(st=
ruct net_device *lower,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct net_device *upper,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_features_t *features)<br>&gt; =
=C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t upper_disable=
s =3D NETIF_F_UPPER_DISABLES;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_fe=
atures_t feature;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int feature_bit;<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 unsigned int i;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 for_each_netdev_feature(upper_disables, feature_bit) {<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature =3D __NETIF_F_BIT(fea=
ture_bit);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!=
(upper-&gt;wanted_features &amp; feature)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;&amp; (features &amp; featur=
e)) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_dbg(lower, &quot;Dropping feature %pNF,<br>&gt; up=
per dev %s has it off.\n&quot;,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&amp;feature, upper-&gt;name);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~=
feature;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; NETDEV_FEATURE=
_DWORDS; i++) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
for_each_netdev_feature(upper_disables, feature_bit) {<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature =
=3D __NETIF_F_BIT(feature_bit);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(upper-&gt;wanted_featur=
es[i] &amp; feature) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (features[i] &a=
mp; feature)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(lower, &=
quot;Dropping<br>&gt; feature[%u] %pNF, upper dev %s has it off.\n&quot;,<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0i, &amp;feature, upper-&gt;name);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 features[i] &amp;=3D ~feature;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt; -<br>&gt; - =C2=A0 =C2=A0 =C2=A0 return features;<br>&gt; =
=C2=A0}<br>&gt;<br>&gt; =C2=A0static void netdev_sync_lower_features(struct=
 net_device *upper,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 struct net_device *lower=
, netdev_features_t features)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 struct net_dev=
ice *lower, netdev_features_t *features)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t upper_disables =3D NETIF_F_UPPER_DISABL=
ES;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t feature;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int feature_bit;<br>&gt; + =C2=A0 =C2=A0 =C2=A0=
 unsigned int i;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 for_each_netdev_fea=
ture(upper_disables, feature_bit) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 feature =3D __NETIF_F_BIT(feature_bit);<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(features &amp; feature)=
 &amp;&amp; (lower-&gt;features &amp; feature)) {<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(u=
pper, &quot;Disabling feature %pNF on<br>&gt; lower dev %s.\n&quot;,<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;feature, lower-&gt;nam=
e);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 lower-&gt;wanted_features &amp;=3D ~feature;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 __netdev_update_features(lower);<br>&gt; -<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unlikely(lo=
wer-&gt;features &amp; feature))<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
etdev_WARN(upper, &quot;failed to disable<br>&gt; %pNF on %s!\n&quot;,<br>&=
gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &amp;feature, lower-&gt;name);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 netdev_features_change(lower);<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 for (i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++) {<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for_each_netdev_feature(upper_di=
sables, feature_bit) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature =3D __NETIF_F_BIT(feature_bit);<=
br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (!(features[i] &amp; feature) &amp;&amp;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (lower-&gt;features[i] &amp; feature)) {<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_dbg(upper, &quot;Disabling<br>&gt; feature[%u] %pN=
F on lower dev %s.\n&quot;,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i, &amp;feature, lower-&gt;name);<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lower-&gt;wanted_features[i] &amp;=
=3D ~feature[i];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __netdev_update_fe=
atures(lower);<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unli=
kely(lower-&gt;features[i] &amp; feature))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_WARN(upper, &quot;failed to<b=
r>&gt; disable feature[%u] %pNF on %s!\n&quot;,<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 i, &amp;feature, lower-&gt;name);<br>&gt; + =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 else<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev_features_change(lower);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 }<br>&gt; =C2=A0}<br>&gt;<br>&gt; -static netdev_features_t n=
etdev_fix_features(struct net_device *dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 n=
etdev_features_t features)<br>&gt; +static void netdev_fix_features(struct =
net_device *dev,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t =
*features)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Fix illeg=
al checksum combinations */<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &a=
mp; NETIF_F_HW_CSUM) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (features &amp; (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))) {<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 if ((features[0] &amp; NETIF_F_HW_CSUM) &amp;&amp;<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (features[0] &amp; (NETIF_F_IP_CSUM =
| NETIF_F_IPV6_CSUM))) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_warn(dev, &quot;mixed HW and IP checksum settings.\n&q=
uot;);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features =
&amp;=3D ~(NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM);<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~(NETIF_F_IP_CSUM | NE=
TIF_F_IPV6_CSUM);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* TSO requires that SG is present as well. */<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &amp; NETIF_F_ALL_TSO) &amp;&amp;=
 !(features &amp; NETIF_F_SG)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((featur=
es[0] &amp; NETIF_F_ALL_TSO) &amp;&amp; !(features[0] &amp; NETIF_F_SG)) {<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(=
dev, &quot;Dropping TSO features since no SG feature.\n&quot;);<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F=
_ALL_TSO;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 featur=
es[0] &amp;=3D ~NETIF_F_ALL_TSO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&=
gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &amp; NETIF_F_TSO) &amp;&a=
mp; !(features &amp; NETIF_F_HW_CSUM) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(features &amp; NETIF_F_IP_C=
SUM)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((features[0] &amp; NETIF_F_TSO) =
&amp;&amp; !(features[0] &amp; NETIF_F_HW_CSUM) &amp;&amp;<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(features[0] &amp; NETIF_F_IP_CSUM)) {<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &=
quot;Dropping TSO features since no CSUM<br>&gt; feature.\n&quot;);<br>&gt;=
 - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETI=
F_F_TSO;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature=
s &amp;=3D ~NETIF_F_TSO_ECN;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_TSO;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_TSO_ECN;<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0=
 if ((features &amp; NETIF_F_TSO6) &amp;&amp; !(features &amp; NETIF_F_HW_C=
SUM) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0!(features &amp; NETIF_F_IPV6_CSUM)) {<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 if ((features[0] &amp; NETIF_F_TSO6) &amp;&amp; !(features[0]=
 &amp; NETIF_F_HW_CSUM) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 !(features[0] &amp; NETIF_F_IPV6_CSUM)) {<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &quot;Dropping TSO6 =
features since no CSUM<br>&gt; feature.\n&quot;);<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_TSO6;<br>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~N=
ETIF_F_TSO6;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* TSO with IPv4 ID mangling requires IPv4 TSO be enab=
led */<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &amp; NETIF_F_TSO_MANGL=
EID) &amp;&amp; !(features &amp; NETIF_F_TSO))<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_TSO_MANGLEID;<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((features[0] &amp; NETIF_F_TSO_MANGLEID) &=
amp;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(features[0] &amp; =
NETIF_F_TSO))<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fe=
atures[0] &amp;=3D ~NETIF_F_TSO_MANGLEID;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* TSO ECN requires that TSO is present as well. */<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 if ((features &amp; NETIF_F_ALL_TSO) =3D=3D NETIF_F_TS=
O_ECN)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features =
&amp;=3D ~NETIF_F_TSO_ECN;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((features[0] =
&amp; NETIF_F_ALL_TSO) =3D=3D NETIF_F_TSO_ECN)<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_TSO_ECN;<br>&=
gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Software GSO depends on SG. */<b=
r>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &amp; NETIF_F_GSO) &amp;&amp; !=
(features &amp; NETIF_F_SG)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((features=
[0] &amp; NETIF_F_GSO) &amp;&amp; !(features[0] &amp; NETIF_F_SG)) {<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &=
quot;Dropping NETIF_F_GSO since no SG feature.\n&quot;);<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_GSO;<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=
=3D ~NETIF_F_GSO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* GSO partial features require GSO partial be set=
 */<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features &amp; dev-&gt;gso_partial_=
features) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(feature=
s &amp; NETIF_F_GSO_PARTIAL)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((feature=
s[0] &amp; dev-&gt;gso_partial_features) &amp;&amp;<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 !(features[0] &amp; NETIF_F_GSO_PARTIAL)) {<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev,<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Dropping partially supported GSO features<=
br>&gt; since no GSO partial.\n&quot;);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~dev-&gt;gso_partial_features;<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=
=3D ~dev-&gt;gso_partial_features;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br=
>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (!(features &amp; NETIF_F_RXCSUM)) =
{<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (!(features[0] &amp; NETIF_F_RXCSUM)) {=
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* NETIF_F=
_GRO_HW implies doing RXCSUM since every packet<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* successfully merged by hardw=
are must also have the<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0* checksum verified by hardware.=C2=A0 If the user does=
 not<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* want to enable RXCSUM, logically, we should disable GRO_HW.<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features &amp; NETIF_F_GR=
O_HW) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (feat=
ures[0] &amp; NETIF_F_GRO_HW) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &quot;Drop=
ping NETIF_F_GRO_HW since<br>&gt; no RXCSUM feature.\n&quot;);<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 features &amp;=3D ~NETIF_F_GRO_HW;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~=
NETIF_F_GRO_HW;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* LRO/HW-GRO features cannot be combined with RX-FCS */<=
br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (features &amp; NETIF_F_RXFCS) {<br>&gt; =
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features &amp; NETIF=
_F_LRO) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (features[0] &amp; NETIF_F_RXFC=
S) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (feature=
s[0] &amp; NETIF_F_LRO) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &quot;Dropping L=
RO feature since<br>&gt; RX-FCS is requested.\n&quot;);<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 featu=
res &amp;=3D ~NETIF_F_LRO;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_LRO;<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br=
>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features &amp;=
 NETIF_F_GRO_HW) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (features[0] &amp; NETIF_F_GRO_HW) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(d=
ev, &quot;Dropping HW-GRO feature since<br>&gt; RX-FCS is requested.\n&quot=
;);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_GRO_HW;<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features=
[0] &amp;=3D ~NETIF_F_GRO_HW;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 if (features &amp; NETIF_F_HW_TLS_TX) {<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ip_csum =3D (features=
 &amp; (NETIF_F_IP_CSUM |<br>&gt; NETIF_F_IPV6_CSUM)) =3D=3D<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 if (features[0] &amp; NETIF_F_HW_TLS_TX) {<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ip_csum =3D (features[0]=
 &amp; (NETIF_F_IP_CSUM |<br>&gt; NETIF_F_IPV6_CSUM)) =3D=3D<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool hw_csum =3D features &amp; NETIF_F_HW_CSUM=
;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool hw_csum =
=3D features[0] &amp; NETIF_F_HW_CSUM;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ip_csum &amp;&amp; !hw_csum) {<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_dbg(dev, &quot;Dropping TLS TX HW offload<br>&gt; feat=
ure since no CSUM feature.\n&quot;);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F=
_HW_TLS_TX;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_HW_TLS_TX;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((features=
 &amp; NETIF_F_HW_TLS_RX) &amp;&amp; !(features &amp; NETIF_F_RXCSUM)) {<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 if ((features[0] &amp; NETIF_F_HW_TLS_RX) &amp=
;&amp;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !(features[0] &amp; NET=
IF_F_RXCSUM)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 netdev_dbg(dev, &quot;Dropping TLS RX HW offload feature<br>&gt; sin=
ce no RXCSUM feature.\n&quot;);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 features &amp;=3D ~NETIF_F_HW_TLS_RX;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] &amp;=3D ~NETIF_F_HW_=
TLS_RX;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; -<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 return features;<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0int __=
netdev_update_features(struct net_device *dev)<br>&gt; =C2=A0{<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 netdev_features_t features[NETDEV_FEATURE_DWORDS];<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_device *upper, *lower;<br>&gt; =
- =C2=A0 =C2=A0 =C2=A0 netdev_features_t features;<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 struct list_head *iter;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 unsign=
ed int i;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int err =3D -1;<br>&gt;<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ASSERT_RTNL();<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 features =3D netdev_get_wanted_features(dev);<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 netdev_get_wanted_features(dev, features);<br>&gt;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;netdev_ops-&gt;ndo_fix_features)<br=
>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features =3D dev-&=
gt;netdev_ops-&gt;ndo_fix_features(dev, features);<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;netdev_ops-&gt;ndo_fix_features(=
dev, features);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* driver might=
 be less strict about feature dependencies */<br>&gt; - =C2=A0 =C2=A0 =C2=
=A0 features =3D netdev_fix_features(dev, features);<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 netdev_fix_features(dev, features);<br>&gt;<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* some features can&#39;t be enabled if they&#39;re off =
on an upper device */<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_for_each_u=
pper_dev_rcu(dev, upper, iter)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 features =3D netdev_sync_upper_features(dev, upper, features=
);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_sync_u=
pper_features(dev, upper, features);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0=
 if (dev-&gt;features =3D=3D features)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (n=
etdev_features_equal(dev-&gt;features, features))<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto sync_lower;<br>&gt;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &quot;Features changed: %pNF -&gt; %pN=
F\n&quot;,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;=
dev-&gt;features, &amp;features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D=
 0; i &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev_dbg(dev, &quot;Features[%u] changed: %pNF -=
&gt; %pNF\n&quot;,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i, &amp;dev-&gt;features[i], &=
amp;features[i]);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;n=
etdev_ops-&gt;ndo_set_features)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 err =3D dev-&gt;netdev_ops-&gt;ndo_set_features(dev, f=
eatures);<br>&gt; @@ -9971,9 +9979,10 @@ int __netdev_update_features(struc=
t net_device *dev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 err =3D 0;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unlikely=
(err &lt; 0)) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
netdev_err(dev,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;set_features() failed (%d); wanted %pNF, =
left %pNF\n&quot;,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err, &amp;features, &amp;dev-&gt;features);=
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i=
 &lt; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_err(dev,<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;set_features() failed (%d);<=
br>&gt; wanted[%u] %pNF, left[%u] %pNF\n&quot;,<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0err, i, &amp;features[i], i, &amp;dev-&gt;featur=
es[i]);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =
return non-0 since some features might have changed and<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* it&#39;s better to fi=
re a spurious notification than miss it<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; @@ -9988,9 +9997,10 @@ int __=
netdev_update_features(struct net_device *dev)<br>&gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_sync_lower_features(dev, lower, =
features);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!err) {<br>&gt; =
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t diff =
=3D features ^ dev-&gt;features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t diff[NETDEV_FEATURE_DWORDS];<br>&gt;<br=
>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (diff &amp; NET=
IF_F_RX_UDP_TUNNEL_PORT) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 netdev_features_xor(diff, features, dev-&gt;features);<br>&gt; +=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (diff[0] &amp; NETIF_F=
_RX_UDP_TUNNEL_PORT) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* udp_tunnel_{get,drop}_rx_info =
both need<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* NETIF_F_RX_UDP_TUNNEL_PORT enabled on t=
he<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0* device, or they won&#39;t do anything.<br>&gt;=
 @@ -9998,33 +10008,33 @@ int __netdev_update_features(struct net_device *d=
ev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0* *before* calling udp_tunnel_get_rx_info,<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0* but *after* calling udp_tunnel_drop_rx_info.<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features &amp; NETIF_F_RX_UDP_TUNNEL_PO=
RT) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features =3D features=
;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (features[0] &amp; NETIF_F_RX_UDP_TUNNEL_PORT) {<br>&gt; +=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features[0] =3D features[0];<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 udp_tunnel_get_rx_info(dev);<br>&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 } else {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 udp_tunn=
el_drop_rx_info(dev);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (diff &amp; NETIF_F_HW_VLAN_CTAG_FILTER) {<b=
r>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (features &amp; NETIF_F_HW_VLAN_CTAG_FILTER) {<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features =3D features;<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (diff[0] &amp; NETIF_F_HW_VLA=
N_CTAG_FILTER) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (features[0] &amp; NETIF_F_HW_VLAN_CTAG_FIL=
TER) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features[0] =3D fe=
atures[0];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err |=3D vlan_get_r=
x_ctag_filter_info(dev);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 vlan_drop_rx_ctag_filter_info(dev);<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=
&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (diff &a=
mp; NETIF_F_HW_VLAN_STAG_FILTER) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (diff[0] &amp; NETIF_F_HW_VLAN_STAG_FILTER) {<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if (features &amp; NETIF_F_HW_VLAN_STAG_FILTER) {<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features =3D features;<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features[0] =3D features[0];<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 err |=3D vlan_get_rx_stag_filter_inf=
o(dev);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 vlan_drop_rx_stag_filter_info(dev);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;features =3D featu=
res;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_feat=
ures_copy(dev-&gt;features, features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
}<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return err &lt; 0 ? 0 : 1;<br=
>&gt; @@ -10213,7 +10223,7 @@ int register_netdevice(struct net_device *dev=
)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int ret;<br>&gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 struct net *net =3D dev_net(dev);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 BUILD_BUG_ON(sizeof(netdev_features_t) * BITS_PER_BYTE &lt;<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 BUILD_BUG_ON(sizeof(dev-&gt;features) * BITS_PER_BYT=
E &lt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 BUG_ON(dev_boot_phase);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ASSERT_RTNL();=
<br>&gt; @@ -10250,7 +10260,7 @@ int register_netdevice(struct net_device *=
dev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if=
 (((dev-&gt;hw_features | dev-&gt;features) &amp;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 if (((dev-&gt;hw_features[0] | dev-&gt;features[0]) &amp;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NETIF_F_HW_VLAN_CTAG_FILTER=
) &amp;&amp;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (!dev-&gt;ne=
tdev_ops-&gt;ndo_vlan_rx_add_vid ||<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0!dev-&gt;netdev_ops-&gt;ndo_vlan_rx_kill_vid)) {<br>&gt; @=
@ -10268,44 +10278,46 @@ int register_netdevice(struct net_device *dev)<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Transfer changeable features to wanted_=
features and enable<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* software of=
floads (GSO and GRO).<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; =
- =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features |=3D (NETIF_F_SOFT_FEATURES | NE=
TIF_F_SOFT_FEATURES_OFF);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;features |=
=3D NETIF_F_SOFT_FEATURES;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_featur=
es[0] |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (NETIF_F_SOFT_FEATURES | NETIF_F_SOFT_FEATURES_OFF=
);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;features[0] |=3D NETIF_F_SOFT_FEA=
TURES;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;udp_tunnel_n=
ic_info) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&=
gt;features |=3D NETIF_F_RX_UDP_TUNNEL_PORT;<br>&gt; - =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features |=3D NETIF_F_RX_UDP_TUNNEL=
_PORT;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;f=
eatures[0] |=3D NETIF_F_RX_UDP_TUNNEL_PORT;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features[0] |=3D NETIF_F_RX_UDP_TUNN=
EL_PORT;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 dev-&gt;wanted_features =3D dev-&gt;features &amp; dev-&gt;hw_fe=
atures;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_and(dev-&gt;wanted_f=
eatures, dev-&gt;features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features);<=
br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(dev-&gt;flags &amp; IFF_L=
OOPBACK))<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&g=
t;hw_features |=3D NETIF_F_NOCACHE_COPY;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_features[0] |=3D NETIF_F_NOCACHE_COPY;<=
br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* If IPv4 TCP segmentation off=
load is supported we should also<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* allow the device to enable segmenting the frame with the option<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* of ignoring a static IP ID value.=C2=A0=
 This doesn&#39;t enable the<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* fe=
ature itself but allows the user to enable it later.<br>&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;hw_featur=
es &amp; NETIF_F_TSO)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 dev-&gt;hw_features |=3D NETIF_F_TSO_MANGLEID;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 if (dev-&gt;vlan_features &amp; NETIF_F_TSO)<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features |=3D NETIF_=
F_TSO_MANGLEID;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;mpls_features &a=
mp; NETIF_F_TSO)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 dev-&gt;mpls_features |=3D NETIF_F_TSO_MANGLEID;<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 if (dev-&gt;hw_enc_features &amp; NETIF_F_TSO)<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_enc_features |=3D NETIF_F=
_TSO_MANGLEID;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;hw_features[0] &a=
mp; NETIF_F_TSO)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 dev-&gt;hw_features[0] |=3D NETIF_F_TSO_MANGLEID;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 if (dev-&gt;vlan_features[0] &amp; NETIF_F_TSO)<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features[0] |=3D NETIF_=
F_TSO_MANGLEID;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;mpls_features[0]=
 &amp; NETIF_F_TSO)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 dev-&gt;mpls_features[0] |=3D NETIF_F_TSO_MANGLEID;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 if (dev-&gt;hw_enc_features[0] &amp; NETIF_F_TSO)<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_enc_features[0]=
 |=3D NETIF_F_TSO_MANGLEID;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =
Make NETIF_F_HIGHDMA inheritable to VLAN devices.<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features |=
=3D NETIF_F_HIGHDMA;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;vlan_features[0=
] |=3D NETIF_F_HIGHDMA;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Make=
 NETIF_F_SG inheritable to tunnel devices.<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_enc_features |=3D NE=
TIF_F_SG | NETIF_F_GSO_PARTIAL;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;hw_e=
nc_features[0] |=3D NETIF_F_SG | NETIF_F_GSO_PARTIAL;<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* Make NETIF_F_SG inheritable to MPLS.<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&gt=
;mpls_features |=3D NETIF_F_SG;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dev-&gt;mpls=
_features[0] |=3D NETIF_F_SG;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
et =3D call_netdevice_notifiers(NETDEV_POST_INIT, dev);<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ret =3D notifier_to_errno(ret);<br>&gt; @@ -11146,7 +1115=
8,7 @@ int __dev_change_net_namespace(struct<br>&gt; net_device *dev, struc=
t net *net,<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Don&#39;t allow =
namespace local devices to be moved. */<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 err =3D -EINVAL;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;features &amp;=
 NETIF_F_NETNS_LOCAL)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;features[0=
] &amp; NETIF_F_NETNS_LOCAL)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 goto out;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =
Ensure the device has been registrered */<br>&gt; @@ -11506,7 +11518,7 @@ s=
tatic void __net_exit<br>&gt; default_device_exit(struct net *net)<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char fb_name[IFNAMS=
IZ];<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /* Ignore unmoveable devices (i.e. loopback) */<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;features &amp; NETIF_F_NETN=
S_LOCAL)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev=
-&gt;features[0] &amp; NETIF_F_NETNS_LOCAL)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br=
>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Le=
ave virtual devices for the generic cleanup */<br>&gt; diff --git a/net/cor=
e/netpoll.c b/net/core/netpoll.c<br>&gt; index 0a6b047..2c0adf4 100644<br>&=
gt; --- a/net/core/netpoll.c<br>&gt; +++ b/net/core/netpoll.c<br>&gt; @@ -7=
4,13 +74,13 @@ static netdev_tx_t netpoll_start_xmit(struct sk_buff *skb,<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct n=
et_device *dev,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct netdev_queue *txq)<br>&gt; =C2=A0{<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t features[NETDEV_FEATURE_DWORDS];<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev_tx_t status =3D NETDEV_TX_OK;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t features;<br>&gt;<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 features =3D netif_skb_features(skb);<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 netif_skb_features(skb, features);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (skb_vlan_tag_present(skb) &amp;&amp;<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 !vlan_hw_offload_capable(features, skb-&gt;vlan_proto=
)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !vlan_hw_offload_capable(=
features[0], skb-&gt;vlan_proto)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 skb =3D __vlan_hwaccel_push_inside(skb);<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unlikely(!skb))=
 {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* This is actually a packet drop, but we<br>&gt; diff=
 --git a/net/ethtool/features.c b/net/ethtool/features.c<br>&gt; index 1c9f=
4df..0eedb17 100644<br>&gt; --- a/net/ethtool/features.c<br>&gt; +++ b/net/=
ethtool/features.c<br>&gt; @@ -25,12 +25,13 @@ const struct nla_policy ethn=
l_features_get_policy[] =3D {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 NLA_POLICY_NESTED(ethnl_header_policy),<br>&gt; =C2=A0=
};<br>&gt;<br>&gt; -static void ethnl_features_to_bitmap32(u32 *dest, netde=
v_features_t src)<br>&gt; +static void ethnl_features_to_bitmap32(u32 *dest=
, netdev_features_t *src)<br>&gt; =C2=A0{<br>&gt; + =C2=A0 =C2=A0 =C2=A0 u3=
2 *__src =3D (u32 *)src;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int i=
;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; ETHTOOL_=
DEV_FEATURE_WORDS; i++)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 dest[i] =3D src &gt;&gt; (32 * i);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dest[i] =3D __src[i];<br>&gt; =C2=A0}<br>&gt;<b=
r>&gt; =C2=A0static int features_prepare_data(const struct ethnl_req_info *=
req_base,<br>&gt; @@ -38,15 +39,23 @@ static int features_prepare_data(cons=
t struct<br>&gt; ethnl_req_info *req_base,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0struct genl_info *info)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 struct features_reply_data *data =3D FEATURES_REPDATA(=
reply_base);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t features[NETD=
EV_FEATURE_DWORDS] =3D {0};<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct net_=
device *dev =3D reply_base-&gt;dev;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_f=
eatures_t all_features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 unsigned int i;<br>&=
gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ethnl_features_to_bitmap32(data-&gt=
;hw, dev-&gt;hw_features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ethnl_featur=
es_to_bitmap32(data-&gt;wanted, dev-&gt;wanted_features);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ethnl_features_to_bitmap32(data-&gt;active, dev-&gt;fe=
atures);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 ethnl_features_to_bitmap32(data-&gt=
;nochange, NETIF_F_NEVER_CHANGE);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 all_featur=
es =3D GENMASK_ULL(NETDEV_FEATURE_COUNT - 1, 0);<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 ethnl_features_to_bitmap32(data-&gt;all, all_features);<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 features[0] =3D NETIF_F_NEVER_CHANGE;<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 ethnl_features_to_bitmap32(data-&gt;nochange, features);<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; NETDEV_FEATURE_DWORDS; i++=
) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (NETDEV_F=
EATURE_COUNT &gt;=3D (i + 1) * 64)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[i] =3D GENMASK_UL=
L(63, 0);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 features[i] =3D GENMASK_ULL(NETDEV_FEATURE_COUNT - i * 64,<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 }<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 ethnl_features_to_bitmap32(data-&gt;all, features);<br>&g=
t;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>&gt; =C2=A0}<br>&gt; @@=
 -131,27 +140,29 @@ const struct nla_policy ethnl_features_set_policy[] =3D=
 {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ETHTOOL_A_FEATURES_WANTED] =C2=A0 =
=C2=A0 =3D { .type =3D NLA_NESTED },<br>&gt; =C2=A0};<br>&gt;<br>&gt; -stat=
ic void ethnl_features_to_bitmap(unsigned long *dest,<br>&gt; netdev_featur=
es_t val)<br>&gt; +static void ethnl_features_to_bitmap(unsigned long *dest=
,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_featur=
es_t *val)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 const unsign=
ed int words =3D BITS_TO_LONGS(NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 unsigned int i;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
bitmap_zero(dest, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 for (i =3D 0; i &lt; words; i++)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 dest[i] =3D (unsigned long)(val &gt;&gt; (i * BITS_PER=
_LONG));<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dest[i]=
 =3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 (unsigned long)(val[i / 2] &gt;&gt; (i % 2 * BITS_PER_LON=
G));<br>&gt; =C2=A0}<br>&gt;<br>&gt; -static netdev_features_t ethnl_bitmap=
_to_features(unsigned long *src)<br>&gt; +static void ethnl_bitmap_to_featu=
res(netdev_features_t *val, unsigned<br>&gt; long *src)<br>&gt; =C2=A0{<br>=
&gt; - =C2=A0 =C2=A0 =C2=A0 const unsigned int nft_bits =3D sizeof(netdev_f=
eatures_t) * BITS_PER_BYTE;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 const unsig=
ned int words =3D BITS_TO_LONGS(NETDEV_FEATURE_COUNT);<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t ret =3D 0;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 unsigned int i;<br>&gt;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt=
; NETDEV_FEATURE_DWORDS; i++)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 val[i] =3D 0;<br>&gt; +<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
or (i =3D 0; i &lt; words; i++)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ret |=3D (netdev_features_t)(src[i]) &lt;&lt; (i * BITS_P=
ER_LONG);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 ret &amp;=3D ~(netdev_features_t)0=
 &gt;&gt; (nft_bits - NETDEV_FEATURE_COUNT);<br>&gt; - =C2=A0 =C2=A0 =C2=A0=
 return ret;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val=
[i / 2] |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (netdev_features_t)(src[i]) &lt;&lt; (i % 2 * BITS=
_PER_LONG);<br>&gt; =C2=A0}<br>&gt;<br>&gt; =C2=A0static int features_send_=
reply(struct net_device *dev, struct genl_info *info,<br>&gt; @@ -212,12 +2=
23,14 @@ int ethnl_set_features(struct sk_buff *skb,<br>&gt; struct genl_in=
fo *info)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 DECLARE_BITMA=
P(wanted_diff_mask, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 DECLARE_BITMAP(active_diff_mask, NETDEV_FEATURE_COUNT);<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 netdev_features_t features[NETDEV_FEATURE_DWORDS];<br>&gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 DECLARE_BITMAP(old_active, NETDEV_FEATURE_COU=
NT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 DECLARE_BITMAP(old_wanted, NETDEV_=
FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 DECLARE_BITMAP(new_acti=
ve, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 DECLARE_BITM=
AP(new_wanted, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 D=
ECLARE_BITMAP(req_wanted, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 DECLARE_BITMAP(req_mask, NETDEV_FEATURE_COUNT);<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 netdev_features_t tmp[NETDEV_FEATURE_DWORDS];<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 struct ethnl_req_info req_info =3D {};<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 struct nlattr **tb =3D info-&gt;attrs;<br>&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 struct net_device *dev;<br>&gt; @@ -242,7 +255,11 @@ =
int ethnl_set_features(struct sk_buff *skb,<br>&gt; struct genl_info *info)=
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_features_strings=
, info-&gt;extack);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret &lt; 0)<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto out_rtnl;=
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (ethnl_bitmap_to_features(req_mask) &amp=
; ~NETIF_F_ETHTOOL_BITS) {<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ethnl_b=
itmap_to_features(features, req_mask);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netde=
v_features_ethtool_bits(tmp);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_feature=
s_andnot(features, features, tmp);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (!netd=
ev_features_empty(features)) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 GENL_SET_ERR_MSG(info, &quot;attempt to change non-eth=
tool<br>&gt; features&quot;);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ret =3D -EINVAL;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto out_rtnl;<br>&gt; @@ -253,8 +270,13 @@ int=
 ethnl_set_features(struct sk_buff *skb,<br>&gt; struct genl_info *info)<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitmap_andnot(new_wanted, old_wanted, req=
_mask, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 bitmap_or=
(req_wanted, new_wanted, req_wanted, NETDEV_FEATURE_COUNT);<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (!bitmap_equal(req_wanted, old_wanted, NETDEV_FEATU=
RE_COUNT)) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev=
-&gt;wanted_features &amp;=3D ~dev-&gt;hw_features;<br>&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features |=3D<br>&gt; et=
hnl_bitmap_to_features(req_wanted) &amp; dev-&gt;hw_features;<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(dev-&g=
t;wanted_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev-&gt;wanted_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev-&gt;hw_features);<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ethnl_bitmap_to_features(features, r=
eq_wanted);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netd=
ev_features_and(features, features, dev-&gt;hw_features);<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_or(dev-&gt;wanted=
_features, dev-&gt;wanted_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0features);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 __netdev_update_features(dev);<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ethnl_features_to_bitmap(n=
ew_active, dev-&gt;features);<br>&gt; diff --git a/net/ethtool/ioctl.c b/ne=
t/ethtool/ioctl.c<br>&gt; index baa5d10..f213ec9 100644<br>&gt; --- a/net/e=
thtool/ioctl.c<br>&gt; +++ b/net/ethtool/ioctl.c<br>&gt; @@ -67,12 +67,15 @=
@ static int ethtool_get_features(struct net_device<br>&gt; *dev, void __us=
er *useraddr)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int i;<br>&gt;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* in case feature bits run out again */<br>&gt=
; - =C2=A0 =C2=A0 =C2=A0 BUILD_BUG_ON(ETHTOOL_DEV_FEATURE_WORDS * sizeof(u3=
2) &gt;<br>&gt; sizeof(netdev_features_t));<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
BUILD_BUG_ON(ETHTOOL_DEV_FEATURE_WORDS * sizeof(u32) &gt;<br>&gt; sizeof(de=
v-&gt;features));<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0;=
 i &lt; ETHTOOL_DEV_FEATURE_WORDS; ++i) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 features[i].available =3D (u32)(dev-&gt;hw_feat=
ures &gt;&gt; (32 * i));<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 features[i].requested =3D (u32)(dev-&gt;wanted_features &gt;&gt;=
 (32 * i));<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feat=
ures[i].active =3D (u32)(dev-&gt;features &gt;&gt; (32 * i));<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[i].available =3D<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (u32)(dev-&gt;hw_features[i / 2] &gt;&gt; (i % 2 * 32));<br>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[i].requested =
=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 (u32)(dev-&gt;wanted_features[i / 2] &gt;&gt; (i % 2 * 32=
));<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[i].=
active =3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (u32)(dev-&gt;features[i / 2] &gt;&gt; (i % 2 * 32=
));<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature=
s[i].never_changed =3D<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (u32)(NETIF_F_NEVER_CHANGE &gt;&g=
t; (32 * i));<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; @@ -97,7 +100,9=
 @@ static int ethtool_set_features(struct net_device<br>&gt; *dev, void __=
user *useraddr)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct =
ethtool_sfeatures cmd;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ethtool_s=
et_features_block features[ETHTOOL_DEV_FEATURE_WORDS];<br>&gt; - =C2=A0 =C2=
=A0 =C2=A0 netdev_features_t wanted =3D 0, valid =3D 0;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t wanted[NETDEV_FEATURE_DWORDS] =3D {0};<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t valid[NETDEV_FEATURE_DWORDS] =
=3D {0};<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t tmp[NETDEV_FEATUR=
E_DWORDS];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 int i, ret =3D 0;<br>&gt;<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (copy_from_user(&amp;cmd, useraddr, si=
zeof(cmd)))<br>&gt; @@ -111,23 +116,33 @@ static int ethtool_set_features(s=
truct<br>&gt; net_device *dev, void __user *useraddr)<br>&gt; =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EFAULT;<br>&gt;<br>&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; ETHTOOL_DEV_FEATURE_WORDS;=
 ++i) {<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid |=
=3D (netdev_features_t)features[i].valid &lt;&lt; (32 * i);<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wanted |=3D (netdev_features_=
t)features[i].requested &lt;&lt; (32 * i);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 valid[i / 2] |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (netdev_feature=
s_t)features[i].valid &lt;&lt; (32 * i);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 wanted[i / 2] |=3D<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (netdev_features_t)=
features[i].requested &lt;&lt; (32 * i);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (valid &amp; ~NETIF_F_ETHTO=
OL_BITS)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_ethtool_bits(tmp);<=
br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(tmp, features, tmp);<=
br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (!netdev_features_empty(tmp))<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>&gt=
;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (valid &amp; ~dev-&gt;hw_features) {<br=
>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 valid &amp;=3D dev=
-&gt;hw_features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(tmp=
, valid, dev-&gt;hw_features);<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if =
(!netdev_features_empty(tmp)) {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 netdev_features_and(valid, valid, dev-&gt;hw_features);<b=
r>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret |=3D ETH=
TOOL_F_UNSUPPORTED;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; -=
 =C2=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features &amp;=3D ~valid;<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features |=3D wanted &amp; valid;<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(dev-&gt;wanted_features, d=
ev-&gt;wanted_features,<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0valid);<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_and(wanted, wanted, valid);<br>&=
gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_or(dev-&gt;wanted_features, dev-=
&gt;wanted_features, wanted);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 __netdev_=
update_features(dev);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if ((dev-&gt;w=
anted_features ^ dev-&gt;features) &amp; valid)<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 netdev_features_xor(tmp, dev-&gt;wanted_features, dev-&gt;features);<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_and(tmp, tmp, valid);<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 if (!netdev_features_empty(tmp))<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret |=3D ETHTOOL_F_WISH;<br>&=
gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>&gt; @@ -227,7 +242,=
7 @@ static int ethtool_get_one_feature(struct net_device *dev,<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_t mask =3D ethtool_get_feature_mas=
k(ethcmd);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ethtool_value edata =
=3D {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .cmd =
=3D ethcmd,<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .dat=
a =3D !!(dev-&gt;features &amp; mask),<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 .data =3D !!(dev-&gt;features[0] &amp; mask),<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (copy_to_user(useraddr, &amp;edata, sizeof(edata)))<br>&gt; @@ -238,=
21 +253,23 @@ static int ethtool_get_one_feature(struct net_device *dev,<br=
>&gt; =C2=A0static int ethtool_set_one_feature(struct net_device *dev,<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 void __user *useraddr, u32 ethcmd)<br>&gt; =
=C2=A0{<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t mask[NETDEV_FEATUR=
E_DWORDS] =3D {0};<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ethtool_value=
 edata;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t mask;<br>&gt;<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (copy_from_user(&amp;edata, useraddr, si=
zeof(edata)))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 return -EFAULT;<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 mask =3D ethtool=
_get_feature_mask(ethcmd);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 mask &amp;=3D dev=
-&gt;hw_features;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (!mask)<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 mask[0] =3D ethtool_get_feature_mask(ethcmd);<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 netdev_features_and(mask, mask, dev-&gt;hw_features);<=
br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (netdev_features_empty(mask))<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EOPNOTSUPP;<br=
>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (edata.data)<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;wanted_features |=3D mask=
;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_feature=
s_or(dev-&gt;wanted_features, dev-&gt;wanted_features,<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mask)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;wa=
nted_features &amp;=3D ~mask;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 netdev_features_andnot(dev-&gt;wanted_features,<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev-&gt;wanted_featu=
res, mask);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 __netdev_update_fea=
tures(dev);<br>&gt;<br>&gt; @@ -285,29 +302,37 @@ static u32 __ethtool_get_=
flags(struct net_device *dev)<br>&gt;<br>&gt; =C2=A0static int __ethtool_se=
t_flags(struct net_device *dev, u32 data)<br>&gt; =C2=A0{<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t features =3D 0, changed;<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 netdev_features_t features[NETDEV_FEATURE_DWORDS] =3D {0};<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t changed[NETDEV_FEATURE_DWORD=
S];<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t tmp[NETDEV_FEATURE_DWO=
RDS];<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (data &amp; ~ETH_ALL_F=
LAGS)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retur=
n -EINVAL;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (data &amp; ETH_F=
LAG_LRO)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 feature=
s |=3D NETIF_F_LRO;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 features[0] |=3D NETIF_F_LRO;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (d=
ata &amp; ETH_FLAG_RXVLAN)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 features |=3D NETIF_F_HW_VLAN_CTAG_RX;<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] |=3D NETIF_F_HW_VLAN_CTAG_RX=
;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (data &amp; ETH_FLAG_TXVLAN)<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features |=3D NETIF_F=
_HW_VLAN_CTAG_TX;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 features[0] |=3D NETIF_F_HW_VLAN_CTAG_TX;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (data &amp; ETH_FLAG_NTUPLE)<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 features |=3D NETIF_F_NTUPLE;<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] |=3D NETIF_F_NTUPLE;<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (data &amp; ETH_FLAG_RXHASH)<br>&gt; - =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features |=3D NETIF_F_RXHA=
SH;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 features[0] =
|=3D NETIF_F_RXHASH;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* allow c=
hanging only bits set in hw_features */<br>&gt; - =C2=A0 =C2=A0 =C2=A0 chan=
ged =3D (features ^ dev-&gt;features) &amp; ETH_ALL_FEATURES;<br>&gt; - =C2=
=A0 =C2=A0 =C2=A0 if (changed &amp; ~dev-&gt;hw_features)<br>&gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return (changed &amp; dev-&gt;hw_=
features) ? -EINVAL : -EOPNOTSUPP;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_fe=
atures_xor(changed, features, dev-&gt;features);<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 changed[0] &amp;=3D ETH_ALL_FEATURES;<br>&gt; +<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 netdev_features_andnot(tmp, changed, dev-&gt;hw_features);<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 if (!netdev_features_empty(tmp)) {<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_and(tmp, chan=
ged, dev-&gt;hw_features);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return (!netdev_features_empty(tmp)) ? -EINVAL : -EOPNOTSUPP;<br=
>&gt; + =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 dev-&=
gt;wanted_features =3D<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (dev-&gt;wanted_features &amp; ~changed) | (features &amp; changed);=
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_andnot(tmp, dev-&gt;wanted_=
features, changed);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_and(feat=
ures, features, changed);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_or=
(dev-&gt;wanted_features, tmp, features);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 __netdev_update_features(dev);<br>&gt;<br>&gt; @@ -2587,7 +2612,=
7 @@ int dev_ethtool(struct net *net, struct ifreq *ifr)<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 void __user *useraddr =3D ifr-&gt;ifr_data;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 u32 ethcmd, sub_cmd;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 int rc;<br>&gt; - =C2=A0 =C2=A0 =C2=A0 netdev_features_t old_feature=
s;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_features_t old_features[NETDEV_FEA=
TURE_DWORDS];<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!dev || !neti=
f_device_present(dev))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 return -ENODEV;<br>&gt; @@ -2650,7 +2675,7 @@ int dev_ethtool=
(struct net *net, struct ifreq *ifr)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc =C2=A0&lt; 0)<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return r=
c;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; - =C2=A0 =C2=A0 =C2=A0 old=
_features =3D dev-&gt;features;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 netdev_featu=
res_copy(old_features, dev-&gt;features);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 switch (ethcmd) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 case ETHTO=
OL_GSET:<br>&gt; @@ -2865,7 +2890,7 @@ int dev_ethtool(struct net *net, str=
uct ifreq *ifr)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dev-&gt;ethtool_ops=
-&gt;complete)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 dev-&gt;ethtool_ops-&gt;complete(dev);<br>&gt;<br>&gt; - =C2=A0 =C2=A0 =
=C2=A0 if (old_features !=3D dev-&gt;features)<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 if (!netdev_features_equal(old_features, dev-&gt;features))<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev_features_change=
(dev);<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>&gt; --<br=
>&gt; 2.8.1<br>&gt;<br>&gt;<br>&gt;<br>&gt; --<br>&gt; Latest Podcast:<br>&=
gt; <a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014=
284936785920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:l=
i:activity:6791014284936785920/</a><br>&gt;<br>&gt; Dave T=C3=A4ht CTO, Tek=
Libre, LLC<br>&gt; _______________________________________________<br>&gt; =
Cake mailing list<br>&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" tar=
get=3D"_blank">Cake@lists.bufferbloat.net</a><br>&gt; <a href=3D"https://li=
sts.bufferbloat.net/listinfo/cake" target=3D"_blank">https://lists.bufferbl=
oat.net/listinfo/cake</a><br><br><br><br>--<br>Robert Chac=C3=B3n<br><a hre=
f=3D"mailto:robert.chacon@jackrabbitwireless.com" target=3D"_blank">robert.=
chacon@jackrabbitwireless.com</a></div>

--0000000000007c51d805c6c7d4aa--

--===============6314900565531920525==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6314900565531920525==--
