.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 702
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 704
    .local v5, "netProp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "iface":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 706
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 709
    .local v0, "addressCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 710
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 713
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 715
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 718
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 721
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 722
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 724
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 725
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 727
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v7, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    const-class v8, Landroid/net/LinkProperties;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 729
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 730
    .local v6, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    goto :goto_4

    .line 733
    .end local v6    # "stackedLink":Landroid/net/LinkProperties;
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 734
    .local v1, "bandwidthCount":I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_6

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/LinkProperties;->addBandwidth(Ljava/lang/String;)V

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 738
    :cond_6
    return-object v5

    .line 716
    .end local v1    # "bandwidthCount":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 742
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
