.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/text/SpannableString;

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-le v2, v1, :cond_0

    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p1, v5}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/text/style/ClickableSpan;I)V

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/text/SpannableString;

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-le v2, v1, :cond_1

    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;

    const/4 v5, 0x1

    invoke-direct {v4, v0, p1, v5}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/text/style/ClickableSpan;I)V

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfSceneProp;

    check-cast p1, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/mcf/McfBarcode;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/McfSceneProp;->FLAT_SCENE:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/mcf/McfDoc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->get(Lcom/motorola/camera/mcf/McfSceneProp$Key;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onSceneProperty(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, p0, p1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    check-cast p1, Landroid/util/Size;

    new-instance v1, Lcom/motorola/camera/VideoFormat;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
