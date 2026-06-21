.class public final synthetic Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 62

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "comment"

    const-string/jumbo v2, "useFifo"

    const-string/jumbo v3, "priority"

    const-string/jumbo v4, "taskNum"

    const-string v5, "jobNum"

    const-string/jumbo v6, "targetId"

    const-string/jumbo v7, "sourceId"

    const-string v8, "clientId"

    const-string/jumbo v9, "ts"

    const-string v10, "id"

    const/4 v12, 0x3

    const/4 v13, 0x4

    const-string v14, "_connection"

    const/4 v15, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    iget v1, v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_lmd:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MOT_DRSDv2 %d (%.2f %.2f %.2f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget v1, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ARCSOFT %d (%d>%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->needEnhancedNR:I

    if-ltz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, " ENR %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v2, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    if-ltz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, " ML %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    const-string v3, "getEVBracket(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->joinToString$default([DLkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-static {v1, v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PFT "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;->toMemoryMb(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;->toMemoryMb(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSS "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADRC "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "SCENE: "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "CANDIDATE "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "AI SCENE "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "THRML: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "RG %5.2f"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AWB "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_3

    move v15, v11

    :cond_3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_5

    :cond_4
    move v15, v11

    :cond_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    if-eq v0, v11, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v12, :cond_7

    if-eq v0, v13, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move v15, v11

    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_8

    move v15, v11

    :cond_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_a

    :cond_9
    move v15, v11

    :cond_a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_b

    move v15, v11

    :cond_b
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Size;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x7f080267

    goto :goto_3

    :cond_c
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v0, 0x7f080266

    goto :goto_3

    :cond_d
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v0, 0x7f080265

    goto :goto_3

    :cond_e
    sget-object v1, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x7f080264

    goto :goto_3

    :cond_f
    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v0, 0x7f080268

    goto :goto_3

    :cond_10
    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/motorola/camera/VideoFormat;->QHD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    :cond_11
    const v0, 0x7f080279

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Size;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v0, 0x7f12066d

    goto :goto_4

    :cond_12
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x7f12066c

    goto :goto_4

    :cond_13
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v0, 0x7f12066b

    goto :goto_4

    :cond_14
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v0, 0x7f12066a

    goto :goto_4

    :cond_15
    sget-object v1, Lcom/motorola/camera/VideoFormat;->QHD_2K_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v0, 0x7f120668

    goto :goto_4

    :cond_16
    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v0, 0x7f120664

    goto :goto_4

    :cond_17
    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const v0, 0x7f120666

    goto :goto_4

    :cond_18
    sget-object v1, Lcom/motorola/camera/VideoFormat;->QHD_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v0, 0x7f120667

    goto :goto_4

    :cond_19
    sget-object v1, Lcom/motorola/camera/VideoFormat;->VGA_SIZES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f12066e

    goto :goto_4

    :cond_1a
    const v0, 0x7f120669

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SELECT COUNT(*) FROM transaction_table"

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v15, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_1b
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SELECT * FROM transaction_table"

    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v12

    :try_start_1
    invoke-static {v12, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v10, "markForDelete"

    invoke-static {v12, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    invoke-static {v12, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    invoke-static {v12, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    invoke-static {v12, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    invoke-static {v12, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    invoke-static {v12, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    invoke-static {v12, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    invoke-static {v12, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    invoke-static {v12, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    invoke-static {v12, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    const-string v13, "coProcId"

    invoke-static {v12, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    const-string v14, "callerId"

    invoke-static {v12, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    const-string v11, "msgType"

    invoke-static {v12, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v15, "msg"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string/jumbo v15, "returnCode"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "iCallerId"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "iMsgType"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "iMsg"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "iReturnCode"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string/jumbo v15, "state"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string/jumbo v15, "progressInd"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string/jumbo v15, "timeExpiration"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string/jumbo v15, "scheduled"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string/jumbo v15, "retryCount"

    invoke-static {v12, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-interface {v12}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v26

    if-eqz v26, :cond_23

    invoke-interface {v12, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    move/from16 v26, v14

    move-object/from16 v58, v15

    invoke-interface {v12, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_1c

    const/16 v30, 0x1

    goto :goto_8

    :cond_1c
    const/16 v30, 0x0

    :goto_8
    invoke-interface {v12, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v31

    invoke-interface {v12, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v59, v8

    move v15, v9

    invoke-interface {v12, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move v9, v7

    move/from16 v34, v8

    invoke-interface {v12, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v12, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v36

    invoke-interface {v12, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v38

    move/from16 v60, v4

    move v8, v5

    invoke-interface {v12, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v3

    move/from16 v40, v4

    invoke-interface {v12, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1d

    const/16 v41, 0x1

    goto :goto_9

    :cond_1d
    const/16 v41, 0x0

    :goto_9
    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v42, 0x0

    goto :goto_a

    :cond_1e
    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v42, v3

    :goto_a
    invoke-interface {v12, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v61, v1

    move/from16 v4, v26

    move/from16 v26, v0

    invoke-interface {v12, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v44, v0

    invoke-interface {v12, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, p1

    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v46, 0x0

    :goto_b
    move/from16 v45, v0

    move/from16 p1, v2

    move/from16 v0, v16

    move/from16 v16, v1

    goto :goto_c

    :cond_1f
    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v46, v27

    goto :goto_b

    :goto_c
    invoke-interface {v12, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v47, v1

    move/from16 v2, v17

    move/from16 v17, v0

    invoke-interface {v12, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v43, v3

    move/from16 v1, v18

    move/from16 v18, v2

    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v19

    invoke-interface {v12, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_20

    const/16 v50, 0x0

    move/from16 v48, v0

    move/from16 v19, v1

    move/from16 v49, v2

    move/from16 v0, v20

    goto :goto_d

    :cond_20
    invoke-interface {v12, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v50, v19

    move/from16 v48, v0

    move/from16 v49, v2

    move/from16 v0, v20

    move/from16 v19, v1

    :goto_d
    invoke-interface {v12, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v2, v21

    invoke-interface {v12, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_21

    const/16 v52, 0x0

    move/from16 v20, v0

    move/from16 v51, v1

    move/from16 v21, v2

    :goto_e
    move/from16 v0, v22

    goto :goto_f

    :cond_21
    invoke-interface {v12, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v52, v20

    move/from16 v51, v1

    move/from16 v21, v2

    move/from16 v20, v0

    goto :goto_e

    :goto_f
    invoke-interface {v12, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v2, v23

    invoke-interface {v12, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v54

    move/from16 v22, v0

    move/from16 v53, v1

    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v1, :cond_22

    const/16 v56, 0x1

    :goto_10
    move/from16 v24, v3

    move/from16 v1, v25

    goto :goto_11

    :cond_22
    const/16 v56, 0x0

    goto :goto_10

    :goto_11
    invoke-interface {v12, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v27, Lcom/motorola/camera/background/service/jms/db/Transaction;

    move/from16 v57, v2

    move/from16 v35, v7

    move/from16 v33, v14

    invoke-direct/range {v27 .. v57}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    move-object/from16 v2, v27

    move-object/from16 v3, v58

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v2, p1

    move/from16 v25, v1

    move v14, v4

    move v7, v9

    move v9, v15

    move/from16 p1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v24

    move/from16 v4, v60

    move/from16 v1, v61

    move/from16 v24, v0

    move-object v15, v3

    move v3, v5

    move v5, v8

    move/from16 v0, v26

    move/from16 v8, v59

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_23
    move-object v3, v15

    invoke-interface {v12}, Ljava/lang/AutoCloseable;->close()V

    return-object v3

    :goto_12
    invoke-interface {v12}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DELETE FROM fileData_table"

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {v0}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "SELECT * FROM bgCaptureRecord_table"

    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v11

    :try_start_3
    invoke-static {v11, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v10, "mediaStoreUri"

    invoke-static {v11, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    invoke-static {v11, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v12, "expirationTime"

    invoke-static {v11, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    invoke-static {v11, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    invoke-static {v11, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    invoke-static {v11, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    invoke-static {v11, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    invoke-static {v11, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v13, "progressLevel"

    invoke-static {v11, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "progressMax"

    invoke-static {v11, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "thumbWidth"

    invoke-static {v11, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string/jumbo v15, "thumbHeight"

    invoke-static {v11, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string/jumbo v15, "thumbnailPath"

    invoke-static {v11, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string/jumbo v15, "uuid"

    invoke-static {v11, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-interface {v11}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v11, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v21

    invoke-interface {v11, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v11, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    invoke-interface {v11, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v26

    move/from16 v45, v9

    move/from16 v19, v10

    invoke-interface {v11, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move v10, v8

    move/from16 v28, v9

    invoke-interface {v11, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move v9, v7

    move/from16 v29, v8

    invoke-interface {v11, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v11, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v31

    invoke-interface {v11, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v33

    move/from16 v46, v4

    move v8, v5

    invoke-interface {v11, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v3

    move/from16 v35, v4

    invoke-interface {v11, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_24

    const/16 v36, 0x1

    goto :goto_14

    :cond_24
    const/16 v36, 0x0

    :goto_14
    invoke-interface {v11, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v37, 0x0

    goto :goto_15

    :cond_25
    invoke-interface {v11, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    :goto_15
    invoke-interface {v11, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move v4, v0

    move/from16 v47, v1

    invoke-interface {v11, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, p1

    move/from16 p1, v2

    move/from16 v38, v3

    invoke-interface {v11, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v39, v0

    move/from16 v3, v16

    move/from16 v16, v1

    invoke-interface {v11, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, v17

    invoke-interface {v11, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v42, 0x0

    :goto_16
    move/from16 v41, v0

    move/from16 v0, v18

    goto :goto_17

    :cond_26
    invoke-interface {v11, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v42, v17

    goto :goto_16

    :goto_17
    invoke-interface {v11, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v43

    new-instance v20, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move/from16 v40, v2

    move/from16 v30, v7

    invoke-direct/range {v20 .. v44}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    move-object/from16 v2, v20

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v2, p1

    move/from16 v18, v0

    move/from16 v17, v1

    move v0, v4

    move v7, v9

    move/from16 p1, v16

    move/from16 v9, v45

    move/from16 v4, v46

    move/from16 v1, v47

    move/from16 v16, v3

    move v3, v5

    move v5, v8

    move v8, v10

    move/from16 v10, v19

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    goto :goto_18

    :cond_27
    invoke-interface {v11}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_18
    invoke-interface {v11}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    const-string/jumbo v1, "statement"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    :goto_19
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    invoke-static {v1}, Lkotlin/collections/SetsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    move-result-object v0

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

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
