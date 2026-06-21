.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    .line 15
    iput-boolean p3, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    .line 16
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 18
    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0

    .line 19
    :try_start_2
    sget-object p2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 20
    iput-object p1, p2, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
