.class public final Le/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    new-instance v4, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v5}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iput-object v1, p0, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object v4, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object v2, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final a(FJ)J
    .locals 9

    .line 1
    iget-object v0, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    .line 2
    iget-wide v0, v0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 3
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/geometry/Size;->times-7Ah8Wj8(FJ)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int v2, v2

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 5
    iget-object p0, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Size;

    .line 6
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Size;->packedValue:J

    shr-long/2addr v3, p1

    long-to-int v3, v3

    .line 7
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    move v2, v4

    :cond_0
    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    .line 10
    iget-wide v7, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    and-long/2addr v7, v5

    long-to-int p0, v7

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v3

    cmpg-float p0, v0, v4

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    .line 12
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 13
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    shl-long/2addr v0, p1

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    shr-long v2, p2, p1

    long-to-int p0, v2

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    shr-long v2, v0, p1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 15
    invoke-static {p0, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    and-long/2addr p2, v5

    long-to-int p2, p2

    .line 16
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr v0, v5

    long-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    neg-float v0, v0

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 17
    invoke-static {p2, v0, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 19
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    shl-long p0, v0, p1

    and-long/2addr p2, v5

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final a(FJLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 15

    .line 20
    iget-object v7, p0, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, v0, p1

    iget-object v8, p0, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 22
    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    move-wide/from16 v5, p2

    .line 23
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p2

    .line 24
    :goto_0
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 25
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 26
    iget-wide v3, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 p0, 0x0

    .line 27
    invoke-static {p0}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v9

    .line 28
    new-instance v10, Ljava/lang/Float;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-direct {v10, p0}, Ljava/lang/Float;-><init>(F)V

    .line 29
    new-instance v12, Le/n1$$ExternalSyntheticLambda0;

    move/from16 v2, p1

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Le/n1$$ExternalSyntheticLambda0;-><init>(FFJJLandroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V

    const/4 v14, 0x4

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, v0, :cond_1

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le/n1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Le/n1;

    iget-object v0, p0, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object v1, p1, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p1, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p1, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p1, p1, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v1, v0}, La/l;->a(Landroidx/compose/runtime/MutableState;I)I

    move-result v0

    iget-object v1, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v1, v0}, La/l;->a(Landroidx/compose/runtime/MutableState;I)I

    move-result v0

    iget-object p0, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomState(scale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fitPageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
