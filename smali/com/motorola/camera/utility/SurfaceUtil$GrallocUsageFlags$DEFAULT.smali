.class public final Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;
.super Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DEFAULT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 0

    const/16 p0, 0x22

    if-ne p1, p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x3

    return-wide p0
.end method
