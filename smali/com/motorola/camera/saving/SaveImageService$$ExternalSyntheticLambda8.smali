.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$UpdatePromptComponent$$ExternalSyntheticLambda5()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    const v4, 0x7f0a04d1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3

    const v4, 0x7f0a04ce

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_4

    const v4, 0x7f0a04d3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_5

    const v4, 0x7f0a0019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_6

    const v4, 0x7f0a038e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_7

    const v4, 0x7f0a04d2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_4

    :cond_7
    move-object v1, v3

    :goto_4
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_8

    const v4, 0x7f0a04d6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_9

    const v3, 0x7f0a04d4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    :cond_9
    iput-object v3, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_a

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    if-eqz v1, :cond_b

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3b

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v1, v5, :cond_3a

    const/4 v7, 0x3

    if-ne v1, v7, :cond_39

    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    const-string v8, "UpdatePromptComponent"

    if-eq v1, v3, :cond_32

    if-eq v1, v5, :cond_2a

    if-eq v1, v7, :cond_29

    const-wide/16 v9, 0x1388

    const v5, 0x7f0800c7

    if-eq v1, v6, :cond_21

    const/4 v7, 0x5

    if-eq v1, v7, :cond_16

    const/16 v7, 0xb

    if-eq v1, v7, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appUpdate - unknown state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_d
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_e

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_f
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    const v1, 0x7f12019b

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_11

    const v1, 0x7f120646

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_13

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iput-boolean v3, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_15

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const-string p0, "appUpdate - download completed"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_17

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_19

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_19
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    if-eqz p0, :cond_1b

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    const v1, 0x7f1201e8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    const-string v1, "appUpdate - install failed - "

    :goto_7
    invoke-static {v1, p0, v8}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    :cond_1b
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    const v1, 0x7f1201e7

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    const-string v1, "appUpdate - download failed - "

    goto :goto_7

    :goto_8
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_1d

    const v1, 0x7f120647

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1d
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, p0, v9, v10}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1f

    const v1, 0x7f08011d

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1f
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_20

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    return-void

    :cond_21
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_22

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_22
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_23

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_23
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_25

    const v1, 0x7f120648

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_25
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_26

    const v1, 0x7f120644

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_26
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_27

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_27
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_28

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_28
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1, v9, v10}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string p0, "appUpdate - install completed"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string p0, "appUpdate - installing update"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_2b

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_2b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iput-boolean v4, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_2c

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_2c
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_2d

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_2d
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_2e

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2e
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    :cond_2f
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_30
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    long-to-int v1, v1

    filled-new-array {v1}, [I

    move-result-object v1

    const-string/jumbo v2, "progress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_31

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget-wide v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget-wide v3, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "appUpdate - downloading update | "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes downloaded"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_33

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_33
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p0, :cond_34

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_34
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_35

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_35
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_36
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_37

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_37
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_38

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    const-string p0, "appUpdate - download pending"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3a
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120175

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v6, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_3b
    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :cond_3c
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$controlpanel$ControlPanelViewModel$$ExternalSyntheticLambda3()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isControlPanel$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "getKey(...)"

    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->checkVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->itemExpanded:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->setControlPanelItemExpanded(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->updateControlPanelItems()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v6, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lkotlin/Triple;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {v0, v2, v3, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/Triple;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {v0, v2, v3, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v0, Lkotlin/Triple;->first:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v0, Lkotlin/Triple;->second:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lkotlin/Triple;->third:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v8, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/VideoFormat;

    invoke-static {v2}, Lcom/motorola/camera/VideoHelper;->getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v8, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v9, v8, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v10, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5, v10}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v8, v4}, Lcom/motorola/camera/VideoHelper;->isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v4, v2

    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5, v9}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v5

    iget-object v10, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v4, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const-string v11, "SETTING"

    const-string v12, "PREVIOUS_VALUE"

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    invoke-static {v3, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v10, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    :goto_2
    const-string v0, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v2, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->checkVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$indicatorbar$SceneDetectionPillComponent$$ExternalSyntheticLambda4()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanUp(Z)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v0, v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v0, "mEventHandler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$ExternalSyntheticLambda1()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$ExternalSyntheticLambda2()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->$r8$classId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->$r8$lambda$4mFwhMNQNxW-ozbJAiNoviC9-zE(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    return-void

    :pswitch_0
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$ExternalSyntheticLambda2()V

    return-void

    :pswitch_1
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$ExternalSyntheticLambda1()V

    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->startCounter(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    :cond_1
    return-void

    :pswitch_4
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->run$com$motorola$camera$ui$controls_2020$indicatorbar$SceneDetectionPillComponent$$ExternalSyntheticLambda4()V

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    goto :goto_1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    :cond_5
    :goto_1
    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->setupAudioLensSwitchDrawable(Z)V

    return-void

    :pswitch_7
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->run$com$motorola$camera$ui$controls_2020$controlpanel$ControlPanelViewModel$$ExternalSyntheticLambda3()V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1, v9, v8}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v2, :cond_6

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    iget-object v1, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v7, v3, :cond_9

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v9, v3, :cond_9

    :goto_2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v9

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v10

    :goto_4
    iput-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfFlash:Z

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->autoSetting:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v9

    goto :goto_5

    :cond_a
    move v4, v10

    :goto_5
    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfFlash:Z

    if-nez v5, :cond_c

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move v4, v10

    goto :goto_7

    :cond_c
    :goto_6
    move v4, v9

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v9

    goto :goto_9

    :cond_e
    :goto_8
    move v0, v10

    :goto_9
    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfAutoNV:Z

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mKeepHideByLux:Z

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    move v9, v10

    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfAutoNV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$autoExposureStateMachineListener$1;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    if-nez v1, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$autoExposureStateMachineListener$1;->onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_11
    :goto_b
    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iput-boolean v10, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfFlash:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$mcfStateAdapter$1;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$mcfStateAdapter$1;->onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    goto :goto_c

    :cond_12
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_15
    :goto_c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_d

    :cond_16
    move v9, v10

    :cond_17
    :goto_d
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->isControlPanelOpen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->shouldUpdateItemOnIdle:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    :cond_18
    return-void

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_19
    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    invoke-static {v1, v10}, Lcom/motorola/camera/saving/ImageCaptureManager;->canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->unregisterCaptureListeners(Z)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v2

    iput-object v8, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    iput-boolean v10, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v2

    const-string v3, "MODE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    monitor-enter v2

    :try_start_2
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getShutterButton()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    if-eq v3, v0, :cond_1b

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playModeExitLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_1b
    :goto_e
    monitor-exit v2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->reset()V

    return-void

    :goto_f
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$1$1;

    invoke-direct {v3, v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper$launchGallery$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;Lcom/motorola/camera/EventListener;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v8, v8, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-object v8, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraData;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v2, :cond_1e

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_10

    :cond_1c
    move-object v0, v8

    :goto_10
    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_1d
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v9, :cond_1e

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_1e
    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    iget-object v1, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v10}, Landroid/view/View;->setClickable(Z)V

    :cond_1f
    return-void

    :pswitch_13
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->run$com$motorola$camera$ui$controls_2020$UpdatePromptComponent$$ExternalSyntheticLambda5()V

    return-void

    :pswitch_14
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/scenedetection/scene/Scene;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOptInActiveScene()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez v0, :cond_20

    goto/16 :goto_13

    :cond_20
    iget-object v4, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getTextResource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInIcon$delegate:Ljava/lang/Object;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_27

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v7, 0x7

    if-eq v0, v7, :cond_26

    if-eq v0, v6, :cond_25

    const/16 v6, 0xd

    if-eq v0, v6, :cond_24

    const/16 v6, 0x15

    if-eq v0, v6, :cond_23

    const/16 v6, 0xf

    if-eq v0, v6, :cond_22

    if-eq v0, v3, :cond_21

    goto :goto_11

    :cond_21
    const v0, 0x7f080229

    goto :goto_12

    :cond_22
    :goto_11
    const v0, 0x7f0800ab

    goto :goto_12

    :cond_23
    const v0, 0x7f080222

    goto :goto_12

    :cond_24
    const v0, 0x7f08022b

    goto :goto_12

    :cond_25
    const v0, 0x7f08022d

    goto :goto_12

    :cond_26
    const v0, 0x7f080235

    :goto_12
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_27
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInText$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_29

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120574

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :cond_2a
    :goto_13
    return-void

    :pswitch_15
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2b
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2c
    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->currentTidbit:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2d
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScrollFlow:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2e
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCardTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getTitleString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getTitleString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    const-string v5, " "

    iget-object v4, v4, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "replaceAll(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCardDetails:Landroid/widget/TextView;

    if-eqz v2, :cond_36

    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getDetailsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDetailsString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    move v5, v10

    move v8, v5

    :goto_14
    if-gt v5, v4, :cond_35

    if-nez v8, :cond_30

    move v11, v5

    goto :goto_15

    :cond_30
    move v11, v4

    :goto_15
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_31

    move v11, v9

    goto :goto_16

    :cond_31
    move v11, v10

    :goto_16
    if-nez v8, :cond_33

    if-nez v11, :cond_32

    move v8, v9

    goto :goto_14

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_33
    if-nez v11, :cond_34

    goto :goto_17

    :cond_34
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_35
    :goto_17
    add-int/2addr v4, v9

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCard:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_37

    new-instance v3, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9, v1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_3c

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_38

    invoke-static {v0}, Lcom/google/common/collect/Maps;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v10

    :goto_18
    if-ge v5, v4, :cond_3a

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "get(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    iget-object v9, v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "getContext(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/widget/ImageButton;

    invoke-direct {v12, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setId(I)V

    iget v13, v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const v13, 0x7f08034f

    invoke-virtual {v11, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v9, v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sText:I

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v8, v1}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v3, v5

    iget-object v8, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_39

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_3a
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScrollFlow:Landroidx/constraintlayout/helper/widget/Flow;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_3b
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3c
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScroll:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_3d

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActionsScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->animateShow()V

    return-void

    :pswitch_16
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_17
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Ljava/lang/Object;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_3f

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    :cond_3f
    return-void

    :pswitch_18
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v2, "ThumbnailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_40

    const-string v0, " success"

    goto :goto_19

    :cond_40
    const-string v0, " failed"

    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_19
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v12, v15, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->mTargetView:Landroid/view/View;

    iget-boolean v1, v15, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->mApplyAnimation:Z

    iget-object v3, v15, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder$AnimateImageViewTarget;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    const-string v4, "bitmap"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_46

    iget-object v14, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    if-eqz v1, :cond_43

    instance-of v1, v12, Landroid/widget/ImageView;

    if-eqz v1, :cond_41

    move-object v1, v12

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1a

    :cond_41
    instance-of v1, v12, Landroidx/media3/ui/PlayerView;

    if-eqz v1, :cond_42

    move-object v1, v12

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->setArtwork(Landroid/graphics/Bitmap;)V

    :cond_42
    :goto_1a
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v12, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v12, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v12, v1}, Landroid/view/View;->setPivotY(F)V

    new-instance v11, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/16 v16, 0x6

    move-object v13, v12

    invoke-direct/range {v11 .. v16}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_43
    instance-of v1, v12, Landroid/widget/ImageView;

    if-eqz v1, :cond_44

    move-object v1, v12

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1b

    :cond_44
    instance-of v1, v12, Landroidx/media3/ui/PlayerView;

    if-eqz v1, :cond_45

    move-object v1, v12

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->setArtwork(Landroid/graphics/Bitmap;)V

    :cond_45
    :goto_1b
    invoke-static {v12}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    iget-boolean v0, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz v0, :cond_46

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-virtual {v0, v10}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_46
    :goto_1c
    return-void

    :pswitch_1a
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/mcf/McfAuxFrameData;

    if-eqz v1, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v0, :cond_47

    :try_start_4
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v0

    const-string v1, "SaveImageService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    :cond_47
    :goto_1d
    if-nez v0, :cond_48

    goto/16 :goto_2e

    :cond_48
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_49

    goto/16 :goto_2e

    :cond_49
    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v6, v6, Lcom/motorola/camera/saving/SaveImageService;->mMediaLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPendingMediaUris()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto/16 :goto_2e

    :cond_4a
    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v14, Lcom/motorola/camera/AppFeatures$Feature;->USE_POST_VIEW_AS_BACKUP:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v14, Landroid/util/Size;

    if-eqz v6, :cond_4c

    if-eq v6, v9, :cond_4b

    goto :goto_1e

    :cond_4b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getStandardPictureSizeForCurrentAspect(Z)Landroid/util/Size;

    move-result-object v14

    goto :goto_1e

    :cond_4c
    move-object v14, v8

    :cond_4d
    :goto_1e
    if-eqz v14, :cond_50

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v15, v6, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-nez v6, :cond_4f

    if-lt v15, v5, :cond_4e

    goto :goto_1f

    :cond_4e
    sget v5, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    if-lt v5, v7, :cond_50

    :cond_4f
    :goto_1f
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v5, :cond_51

    const-string v5, "SettingsHelper"

    const-string/jumbo v6, "post view scale size reset to null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_50
    move-object v8, v14

    :cond_51
    :goto_20
    if-eqz v8, :cond_52

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v6

    :goto_21
    move v15, v5

    move/from16 v16, v6

    goto :goto_22

    :cond_52
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v6

    goto :goto_21

    :goto_22
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v14

    move/from16 v17, v3

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getWidth()I

    move-result v3

    move/from16 v18, v4

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v19

    sget-object v20, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    mul-int v20, v19, v4

    mul-int/lit8 v20, v20, 0x3

    move/from16 v21, v7

    div-int/lit8 v7, v20, 0x2

    new-array v7, v7, [B

    move/from16 v23, v9

    move v9, v10

    :goto_23
    if-ge v9, v4, :cond_53

    move/from16 p0, v4

    mul-int v4, v9, v14

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v7, v10, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int v10, v10, v19

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p0

    goto :goto_23

    :cond_53
    move/from16 p0, v4

    const/4 v4, 0x0

    :goto_24
    div-int/lit8 v5, p0, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_54

    mul-int v5, v4, v14

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v7, v10, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int v10, v10, v19

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_54
    mul-int/2addr v5, v14

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v7, v10, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_57

    rem-int/lit8 v3, v15, 0x10

    if-nez v3, :cond_55

    move v3, v15

    goto :goto_25

    :cond_55
    div-int/lit8 v3, v15, 0x10

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x10

    :goto_25
    mul-int v4, v3, v16

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v19, v15

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getWidth()I

    move-result v15

    move/from16 v20, v16

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v16

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v17

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    move/from16 v21, v3

    move-object v14, v7

    invoke-static/range {v14 .. v21}, Lcom/motorola/camera/mcf/MotUtil;->nv21scale([BIII[BIII)V

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v2, :cond_56

    const-string v2, "SaveImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "cachePostViewAsBackup: nv21scale dur:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v3, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_56
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v14, v7

    move/from16 v3, v21

    goto :goto_26

    :cond_57
    move-object v14, v7

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v3

    :goto_26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v4

    if-nez v4, :cond_58

    if-eqz v2, :cond_59

    :cond_58
    move/from16 v16, v20

    move/from16 v20, v23

    goto :goto_27

    :cond_59
    move/from16 v16, v20

    const/16 v20, 0x0

    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    filled-new-array {v3, v3}, [I

    move-result-object v17

    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v22

    move/from16 v18, v19

    move/from16 v15, v19

    move/from16 v19, v16

    move/from16 v21, v2

    invoke-static/range {v14 .. v22}, Lcom/motorola/camera/mcf/MotUtil;->compressJpeg([BII[IIIZII)[B

    move-result-object v2

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_5a

    const-string v6, "SaveImageService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cachePostViewAsBackup: compressJpeg dur:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v7, v6}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5a
    instance-of v4, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    if-eqz v4, :cond_5b

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v5, v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    :cond_5b
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->getExifOrientation(F)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Orientation"

    invoke-virtual {v1, v5, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->updatePendingMediaUris(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_5e

    const-string v0, "SaveImageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cachePostViewAsBackup dur:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {v11, v12, v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_2e

    :catchall_2
    move-exception v0

    goto :goto_2c

    :catch_1
    move-exception v0

    goto :goto_2a

    :catch_2
    move-exception v0

    goto :goto_2b

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_29

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_2a
    :try_start_c
    const-string v1, "SaveImageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException while saving PostView as backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_5e

    const-string v0, "SaveImageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cachePostViewAsBackup dur:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :goto_2b
    :try_start_d
    const-string v1, "SaveImageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while saving PostView as backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_5e

    const-string v0, "SaveImageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cachePostViewAsBackup dur:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :goto_2c
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_5c

    const-string v1, "SaveImageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cachePostViewAsBackup dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12, v2, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5c
    throw v0

    :catchall_5
    move-exception v0

    goto :goto_2d

    :catch_3
    move-exception v0

    :try_start_e
    const-string v1, "SaveImageService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6

    goto :goto_2e

    :goto_2d
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_5d
    const-string v0, "SaveImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cachePostViewAsBackup: seqId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " map = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_2e
    return-void

    :pswitch_1b
    move/from16 v21, v7

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    if-eqz v1, :cond_5f

    iget-object v2, v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    move/from16 v4, v21

    invoke-direct {v3, v4, v1, v0}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    :cond_5f
    return-void

    :pswitch_1c
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/ConditionVariable;

    :try_start_f
    new-instance v0, Lcom/google/android/gms/tasks/zzb;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/tasks/zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    if-eqz v0, :cond_60

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    :cond_60
    if-eqz v8, :cond_61

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v4, "DATE_TAKEN"

    iget-wide v5, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    invoke-virtual {v9, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "PROCESSING_URI"

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "THUMB_WIDTH"

    iget v5, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "THUMB_HEIGHT"

    iget v5, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "THUMB_PATH"

    iget-object v5, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/CameraData;

    iget-wide v5, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    iget-object v7, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/motorola/camera/background/provider/BgCaptureRecord;->getTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v5

    iget-object v6, v4, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string/jumbo v7, "task_id"

    invoke-virtual {v6, v7, v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v6, v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_2f

    :catchall_6
    move-exception v0

    goto :goto_33

    :catch_4
    move-exception v0

    goto :goto_31

    :cond_61
    :goto_30
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_32

    :goto_31
    :try_start_10
    const-string v1, "SaveImageService"

    const-string v3, "buildBgProcessing failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_30

    :goto_32
    return-void

    :goto_33
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
