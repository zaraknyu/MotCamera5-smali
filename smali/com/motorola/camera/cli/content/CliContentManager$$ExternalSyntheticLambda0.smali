.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closePreviewContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
