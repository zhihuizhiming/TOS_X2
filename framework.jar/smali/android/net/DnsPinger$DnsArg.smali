.class Landroid/net/DnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsArg"
.end annotation


# instance fields
.field dns:Ljava/net/InetAddress;

.field hostName:Ljava/lang/String;

.field seq:I

.field final synthetic this$0:Landroid/net/DnsPinger;


# direct methods
.method constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V
    .locals 1
    .param p2, "d"    # Ljava/net/InetAddress;
    .param p3, "s"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0
    .param p2, "d"    # Ljava/net/InetAddress;
    .param p3, "s"    # I
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/net/DnsPinger$DnsArg;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 121
    iput p3, p0, Landroid/net/DnsPinger$DnsArg;->seq:I

    .line 122
    iput-object p4, p0, Landroid/net/DnsPinger$DnsArg;->hostName:Ljava/lang/String;

    .line 123
    return-void
.end method
