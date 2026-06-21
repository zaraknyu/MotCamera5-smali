.class public final synthetic Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    if-eqz p0, :cond_0

    check-cast p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, p0}, Lkotlinx/coroutines/internal/ThreadLocalElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    iget v1, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    aput-object p0, v0, v1

    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    aput-object p2, p0, v1

    :cond_0
    return-object p1

    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    if-eqz p0, :cond_2

    move-object p1, p2

    check-cast p1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_1
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    instance-of p0, p2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    if-eqz p0, :cond_6

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 p0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, p0

    :goto_2
    if-nez p1, :cond_5

    move-object p1, p2

    goto :goto_3

    :cond_5
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    return-object p1

    :pswitch_6
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p0, p1, :cond_7

    goto :goto_5

    :cond_7
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/ContinuationInterceptor;

    if-nez v1, :cond_8

    new-instance p1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p1, p2, p0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    :goto_4
    move-object p2, p1

    goto :goto_5

    :cond_8
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    if-ne p0, p1, :cond_9

    new-instance p0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p0, v1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    move-object p2, p0

    goto :goto_5

    :cond_9
    new-instance p1, Lkotlin/coroutines/CombinedContext;

    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p2, p0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    invoke-direct {p1, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_4

    :goto_5
    return-object p2

    :pswitch_7
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    const-string p0, "lhs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    const-string/jumbo p1, "rhs"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_6

    :cond_a
    move v0, p2

    :goto_6
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_7

    :cond_b
    move p1, p2

    :goto_7
    mul-int/2addr v0, p1

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_8

    :cond_c
    move p1, p2

    :goto_8
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p2

    :cond_d
    mul-int/2addr p1, p2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const-string p0, "<unused var>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SELECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->MODES_ORDERING:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sub-int v1, p1, p0

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    const-string p0, "$this$items"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "buttonItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->expanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide p0

    goto :goto_a

    :cond_10
    const/4 p0, 0x1

    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide p0

    :goto_a
    new-instance p2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-direct {p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    return-object p2

    :pswitch_b
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Byte;

    if-eqz p2, :cond_11

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ISZ %d LXI %5.2f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_11
    if-eqz p1, :cond_12

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "LXI %5.2f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_12
    const-string p0, ""

    :goto_b
    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Integer;

    const-string p0, ""

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    :cond_13
    move-object p1, p0

    :cond_14
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_16

    :cond_15
    move-object p2, p0

    :cond_16
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "f/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ISO "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_18
    :goto_c
    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1c

    if-eq p0, p1, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const-string p0, "UNDEF"

    goto :goto_d

    :cond_1a
    const-string p0, "OUTDOOR"

    goto :goto_d

    :cond_1b
    const-string p0, "MOON"

    goto :goto_d

    :cond_1c
    const-string p0, "DEFAULT"

    :goto_d
    const-string v0, "P_SCENE: "

    if-eqz p2, :cond_1d

    iget-boolean v1, p2, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsDetected:Z

    if-ne v1, p1, :cond_1d

    iget p1, p2, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsConfidence:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_1d
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_1e
    :goto_e
    const-string p0, ""

    :goto_f
    return-object p0

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_20

    if-nez p1, :cond_1f

    goto :goto_10

    :cond_1f
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%2d P %2d G FPS"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_20
    :goto_10
    const-string p0, ""

    :goto_11
    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_21

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
