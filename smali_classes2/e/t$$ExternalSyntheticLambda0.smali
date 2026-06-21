.class public final synthetic Le/t$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Le/t;


# direct methods
.method public synthetic constructor <init>(Le/t;I)V
    .locals 0

    iput p2, p0, Le/t$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Le/t$$ExternalSyntheticLambda0;->f$0:Le/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Le/t$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le/t$$ExternalSyntheticLambda0;->f$0:Le/t;

    iget-wide v0, p0, Le/t;->b:J

    iget-wide v2, p0, Le/t;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    new-instance v4, Le/m1;

    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Le/m1;-><init>(JFJ)V

    iget-wide v5, p0, Le/t;->c:J

    invoke-static {v5, v6, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v8

    new-instance v7, Le/m1;

    const-wide v11, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Le/m1;-><init>(JFJ)V

    iget-wide v0, p0, Le/t;->d:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v9

    new-instance v8, Le/m1;

    const-wide v12, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Le/m1;-><init>(JFJ)V

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v10

    new-instance v9, Le/m1;

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Le/m1;-><init>(JFJ)V

    filled-new-array {v9, v4, v7, v8, v9}, [Le/m1;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/m1;

    check-cast v1, Le/m1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v1, Le/m1;->a:J

    const-string v1, "other"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v6, v3, Le/m1;->a:J

    const/16 v1, 0x20

    shr-long v8, v4, v1

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v8, 0xffffffffL

    and-long v10, v6, v8

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    mul-float/2addr v10, v3

    and-long v3, v4, v8

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    shr-long v4, v6, v1

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p0, 0x1

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le/t$$ExternalSyntheticLambda0;->f$0:Le/t;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_8

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v0

    :goto_6
    if-eqz v3, :cond_b

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    const/4 v4, -0x3

    if-eq v2, v4, :cond_9

    const/4 v4, -0x2

    if-eq v2, v4, :cond_8

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    if-eq v2, v1, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    iget-wide v4, p0, Le/t;->a:J

    goto :goto_7

    :cond_7
    iget-wide v4, p0, Le/t;->d:J

    goto :goto_7

    :cond_8
    iget-wide v4, p0, Le/t;->c:J

    goto :goto_7

    :cond_9
    iget-wide v4, p0, Le/t;->b:J

    :goto_7
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    const/16 v4, 0x20

    iget-wide v5, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v7, v5, v4

    long-to-int v2, v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v7, v4, v2

    if-gtz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_a

    const-wide v8, 0xffffffffL

    and-long/2addr v5, v8

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_a

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_a

    move v2, v3

    goto :goto_5

    :cond_a
    move v1, v0

    :cond_b
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Le/C;

    new-instance v1, Le/m1;

    iget-object p0, p0, Le/t$$ExternalSyntheticLambda0;->f$0:Le/t;

    iget-wide v2, p0, Le/t;->b:J

    iget-wide v4, p0, Le/t;->a:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Le/m1;-><init>(J)V

    new-instance v6, Le/m1;

    iget-wide v7, p0, Le/t;->c:J

    invoke-static {v7, v8, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    invoke-direct {v6, v2, v3}, Le/m1;-><init>(J)V

    new-instance v2, Le/m1;

    iget-wide v9, p0, Le/t;->d:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Le/m1;-><init>(J)V

    new-instance p0, Le/m1;

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Le/m1;-><init>(J)V

    invoke-direct {v0, v1, v6, v2, p0}, Le/C;-><init>(Le/m1;Le/m1;Le/m1;Le/m1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
