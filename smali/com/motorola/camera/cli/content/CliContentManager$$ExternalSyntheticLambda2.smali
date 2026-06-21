.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    return-void
.end method


# virtual methods
.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v4, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eq p1, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz p1, :cond_3

    iget-boolean v5, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz p1, :cond_4

    iget-boolean v6, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    if-nez v6, :cond_4

    move v1, v2

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v1, :cond_9

    :cond_5
    iput-boolean p1, v3, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeAnimationContentStatus()V

    :cond_7
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMART_CLI:Z

    if-eqz p1, :cond_9

    if-nez v4, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method
