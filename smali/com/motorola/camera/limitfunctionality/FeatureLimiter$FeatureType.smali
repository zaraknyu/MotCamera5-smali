.class public final enum Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum CAMERA_EXIT:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum RECORD_STOP:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v1, "BRIGHTNESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    new-instance v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v2, "CAMERA_EXIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CAMERA_EXIT:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    new-instance v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v3, "RECORD_STOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->RECORD_STOP:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    new-instance v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v4, "VIDEO_SIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    new-instance v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v5, "VIDEO_RESOLUTION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->$VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
    .locals 1

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->$VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-virtual {v0}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    return-object v0
.end method
