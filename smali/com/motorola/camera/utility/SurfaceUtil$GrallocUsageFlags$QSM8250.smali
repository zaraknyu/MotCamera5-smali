.class public final Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;
.super Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "QSM8250"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 0

    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq p2, p0, :cond_1

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_MCX:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x20003

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x200

    return-wide p0

    :cond_2
    const/16 p0, 0x22

    if-ne p1, p0, :cond_3

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_3
    const-wide/16 p0, 0x3

    return-wide p0
.end method
