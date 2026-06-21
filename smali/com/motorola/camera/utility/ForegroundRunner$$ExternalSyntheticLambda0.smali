.class public final synthetic Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    return-object p0

    :pswitch_0
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    return-object p0

    :pswitch_1
    sget-object p0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0

    :pswitch_2
    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0

    :pswitch_3
    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/motorola/camera/utility/ailens/DefaultAiLensAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_5
    sget p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    return-object v0

    :pswitch_6
    sget p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->$r8$clinit:I

    return-object v0

    :pswitch_7
    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    return-object v0

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object v0

    :pswitch_9
    sget p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->$r8$clinit:I

    return-object v0

    :pswitch_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object v0

    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->$r8$lambda$ZGaUw8lmvIDNC6Ib1soWJcFtb5k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->$r8$lambda$KM_6WEBMXP6rfuLGbwCrLP9Wf_8()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getRearCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1205e9

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    const/4 v3, 0x3

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v2, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-object v0

    :pswitch_13
    sget-object p0, Lcom/motorola/camera/utility/ForegroundRunner;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
