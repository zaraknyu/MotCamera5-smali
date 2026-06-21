.class public final synthetic Lb/o$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb/o$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lb/o$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    packed-switch p0, :pswitch_data_0

    invoke-static {}, La/l;->a()Lb/o;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lb/o;

    invoke-direct {p0}, Lb/o;-><init>()V

    return-object p0

    :pswitch_1
    sget-object p0, Lg/d0;->g:Lkotlin/SynchronizedLazyImpl;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "LocalScanThemeColors must be provided in this context"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    invoke-direct {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;-><init>()V

    return-object p0

    :pswitch_5
    sget p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    return-object v0

    :pswitch_6
    sget p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    :pswitch_8
    return-object v0

    :pswitch_9
    sget-object p0, Lc/q;->b:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_a
    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    const/4 p0, 0x0

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/adobe/magic_clean/CameraCleanAndroidShim;

    invoke-direct {p0}, Lcom/adobe/magic_clean/CameraCleanAndroidShim;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
