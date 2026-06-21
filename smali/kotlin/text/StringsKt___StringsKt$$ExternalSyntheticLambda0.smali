.class public final synthetic Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v3, " "

    const/4 v4, 0x2

    const-string v5, "%.1f"

    const-string v6, "it"

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    return-object p1

    :pswitch_1
    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveCollage job failed due to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotoBoothComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :pswitch_3
    check-cast p1, Landroid/graphics/Bitmap;

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->TAG:Ljava/lang/String;

    return-object v2

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    const-string p0, "fmt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    const-string p0, "$this$AnimatedContent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    sget-object p1, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    sget v0, Landroidx/compose/animation/AnimatedContentKt;->$r8$clinit:I

    new-instance v0, Landroidx/compose/animation/ContentTransform;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    return-object v0

    :pswitch_6
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string p1, "mName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FLICKER  "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CCT "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/lang/Float;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "light lux r %5.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/Float;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "light lux f %5.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    const-string/jumbo p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "C%s:%d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/Float;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "BYHistAva %5.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "LX %5.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LP "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    const-string p0, "FOCUS D: Inf"

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FOCUS D: %5.2fm"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_13
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    const-string v0, "M:"

    invoke-static {p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    const-string v0, "S:"

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FOCUS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Landroid/util/Size;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PS "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 p0, 0xe

    invoke-direct {v4, p0}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v5, 0x1e

    const-string v1, " "

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "NONE"

    goto :goto_7

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_6

    const-string p0, "1EXP"

    goto :goto_7

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_8

    const-string p0, "2EXP"

    goto :goto_7

    :cond_8
    :goto_4
    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_a

    const-string p0, "12BIT"

    goto :goto_7

    :cond_a
    :goto_5
    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_c

    const-string p0, "OTHER"

    goto :goto_7

    :cond_c
    :goto_6
    const-string p0, "UNDEF"

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VHDR_STATE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    iget p0, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->isNVdetected:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_dre_prediction:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_bod_score:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_llc_score:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "MOT_NV %d (%.2f %.2f %.2f)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "ANTI BANDING OFF"

    goto :goto_b

    :cond_e
    :goto_8
    if-nez p1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_10

    const-string p0, "ANTI BANDING 50HZ"

    goto :goto_b

    :cond_10
    :goto_9
    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_12

    const-string p0, "ANTI BANDING 60HZ"

    goto :goto_b

    :cond_12
    :goto_a
    const-string p0, "ANTI BANDING AUTO"

    :goto_b
    return-object p0

    :pswitch_19
    check-cast p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    iget-boolean p0, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JG %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unknown"

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I

    if-ltz v0, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, " ML %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_14
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    array-length v0, p1

    if-nez v0, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->joinToString$default([DLkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0

    :pswitch_1a
    check-cast p1, Ljava/lang/Long;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "EXP %5.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    iget-boolean p0, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-boolean v0, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    const-string v2, ""

    if-eqz v0, :cond_16

    const-string v0, "O"

    goto :goto_d

    :cond_16
    move-object v0, v2

    :goto_d
    iget-boolean v4, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    if-eqz v4, :cond_17

    const-string v2, "U"

    :cond_17
    filled-new-array {p0, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BST %d %s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    const-string v1, "getEVBracket(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_18

    goto :goto_e

    :cond_18
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->joinToString$default([DLkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0

    :pswitch_1c
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

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
