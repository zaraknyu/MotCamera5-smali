.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    invoke-static {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragEnd(F)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    monitor-enter p0

    :try_start_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_2

    monitor-exit p0

    goto :goto_2

    :cond_2
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
