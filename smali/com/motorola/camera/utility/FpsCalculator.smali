.class public final Lcom/motorola/camera/utility/FpsCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public frameTimeArray$delegate:Ljava/io/Serializable;

.field public isFull:Z

.field public nextIndex:I

.field public recordCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CALC_FPS_FRAME_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    new-instance p1, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    iput p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    iput-boolean p1, p0, Lcom/motorola/camera/utility/FpsCalculator;->isFull:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculateFps()I
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    iget v1, p0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    iget-boolean v2, p0, Lcom/motorola/camera/utility/FpsCalculator;->isFull:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    :goto_0
    iget p0, p0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    add-int/lit8 p0, p0, -0x1

    add-int/2addr p0, v1

    rem-int/2addr p0, v1

    sub-int v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    rem-int/2addr v3, v1

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v4, v1, p0

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    aget-wide v0, p0, v3

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v4, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    int-to-double v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method
