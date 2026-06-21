.class public final enum Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiveBoundaryTorchHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

.field public static final enum kLiveBoundaryTorchHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

.field public static final enum kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

.field public static final enum kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
    .locals 3

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    filled-new-array {v0, v1, v2}, [Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    const-string v1, "kLiveBoundaryTorchHintNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintNone:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    const-string v1, "kLiveBoundaryTorchHintTorchOn"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOn:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    const-string v1, "kLiveBoundaryTorchHintTorchOff"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->kLiveBoundaryTorchHintTorchOff:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->$values()[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$LiveBoundaryTorchHint;

    return-object v0
.end method
