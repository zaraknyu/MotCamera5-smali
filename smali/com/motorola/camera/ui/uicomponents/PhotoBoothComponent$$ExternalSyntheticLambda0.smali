.class public final synthetic Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->changePhotoBoothMargin(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->resetPhotoStrip()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080333

    goto :goto_0

    :cond_3
    const v0, 0x7f080334

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->getCollageEditorIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/ColorUtil;->resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothEditButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120399

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :pswitch_7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->changePhotoBoothMargin(Z)V

    :cond_9
    return-void

    :pswitch_8
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->changePhotoBoothMargin(Z)V

    :cond_a
    return-void

    :pswitch_9
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isLowLux:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isFlashing:Z

    :cond_d
    :goto_3
    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_e

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->resetPhotoStrip()V

    return-void

    :pswitch_c
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->changePhotoBoothMargin(Z)V

    return-void

    :pswitch_d
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updatePhotoBoothStrip(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updateThumbnail(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
