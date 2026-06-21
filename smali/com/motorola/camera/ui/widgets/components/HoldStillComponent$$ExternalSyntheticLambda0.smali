.class public final synthetic Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120165

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
