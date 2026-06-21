.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;->$r8$classId:I

    const v1, 0x3c23d70a    # 0.01f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, p1

    int-to-float p0, p0

    div-float v3, p1, p0

    :goto_2
    cmpl-float p0, v3, v2

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    cmpg-float p0, v2, v1

    if-gez p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    int-to-float p1, p1

    int-to-float p0, p0

    div-float v3, p1, p0

    :goto_5
    cmpl-float p0, v3, v2

    if-lez p0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    cmpg-float p0, v2, v1

    if-gez p0, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    const/16 p0, 0x64

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
