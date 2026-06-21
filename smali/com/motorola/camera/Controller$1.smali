.class public final Lcom/motorola/camera/Controller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 8

    iget v0, p0, Lcom/motorola/camera/Controller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object v3, v0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result v6

    iget-object v1, v1, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v7, v4, v5, p0, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->onFoldScreenOrientationChanged(IIIZ)V

    goto :goto_0

    :cond_0
    iget-boolean p0, v0, Lcom/motorola/camera/Controller;->mIsLandscape:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    iget-boolean p0, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    :cond_1
    iget-boolean p0, v0, Lcom/motorola/camera/Controller;->mDelayDualPane:Z

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 p0, p0, 0x2

    iput p0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p0, 0x15

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0x14

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, v0, Lcom/motorola/camera/Controller;->mDelayDualPane:Z

    iget-object p0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/UIManager;->onFoldScreenPaneChanged(Z)V

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
