.class Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;-><init>(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;


# direct methods
.method public constructor <init>(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$1;->this$0:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$1;->this$0:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    invoke-static {p0}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->-$$Nest$mLiveBoundaryTimeKeeperFunction(Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;)V

    return-void
.end method
