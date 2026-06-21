.class public final synthetic Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;

    invoke-direct {p0, v2, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;I)V

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->unregisterShutterButtonListener()V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->hideAnimation()V

    return-void

    :pswitch_1
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void

    :pswitch_2
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->unregisterShutterButtonListener()V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->remove()V

    return-void

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->unregisterShutterButtonListener()V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->remove()V

    :cond_0
    return-void

    :pswitch_4
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->remove()V

    return-void

    :pswitch_5
    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->hideAnimation()V

    return-void

    :pswitch_6
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object p0, v4, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->cutoutsCoordinates$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_2
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v7, v0, v1

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    iget v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gt v0, p0, :cond_3

    iget-object p0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;FI)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p0, v4, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v0, v4, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->shutterButtonVisibilityListener:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;

    iget-object p0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
