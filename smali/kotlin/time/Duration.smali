.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final INFINITE:J

.field public static final NEG_INFINITE:J


# instance fields
.field public final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final addValuesMixedRanges-UwyO8pc(JJ)J
    .locals 10

    const v0, 0xf4240

    int-to-long v0, v0

    div-long v2, p2, v0

    add-long v4, p0, v2

    const-wide p0, -0x431bde82d7aL

    cmp-long p0, p0, v4

    if-gtz p0, :cond_0

    const-wide p0, 0x431bde82d7bL

    cmp-long p0, v4, p0

    if-gez p0, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr v4, v0

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v6, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    const/4 v2, 0x1

    if-gt v2, p3, :cond_1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_4

    :goto_2
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_2

    move p3, p2

    goto :goto_3

    :cond_2
    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v2

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p2, p3, 0x1

    const/4 v0, 0x3

    if-nez p5, :cond_5

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/2addr p3, v0

    div-int/2addr p3, v0

    mul-int/2addr p3, v0

    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Desired length "

    const-string p2, " is less than zero."

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    shr-long/2addr p0, v1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_1
    shr-long/2addr p0, v1

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    goto :goto_0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0

    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    :cond_3
    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    long-to-int v2, p2

    and-int/2addr v2, v1

    if-ne v0, v2, :cond_6

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    add-long/2addr p0, p2

    if-nez v0, :cond_5

    const-wide p2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long p2, p2, p0

    if-gtz p2, :cond_4

    const-wide p2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long p2, p0, p2

    if-gez p2, :cond_4

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_4
    const p2, 0xf4240

    int-to-long p2, p2

    div-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0

    :cond_6
    if-ne v0, v1, :cond_7

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_7
    shr-long/2addr p2, v1

    shr-long/2addr p0, v1

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 3

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    :goto_0
    invoke-static {v1, v2, p0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 3

    const/4 v0, 0x1

    shr-long v1, p0, v0

    neg-long v1, v1

    long-to-int p0, p0

    and-int/2addr p0, v0

    shl-long v0, v1, v0

    int-to-long p0, p0

    add-long/2addr v0, p0

    sget p0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    return-wide v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lkotlin/time/Duration;

    iget-wide v0, p1, Lkotlin/time/Duration;->rawValue:J

    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    xor-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_2

    long-to-int v2, v2

    and-int/2addr v2, v7

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v2, p0

    and-int/2addr v2, v7

    long-to-int v0, v0

    and-int/2addr v0, v7

    sub-int/2addr v2, v0

    cmp-long p0, p0, v4

    if-gez p0, :cond_1

    neg-int p0, v2

    return p0

    :cond_1
    return v2

    :cond_2
    :goto_0
    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    return v7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/time/Duration;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/time/Duration;

    iget-wide v0, p1, Lkotlin/time/Duration;->rawValue:J

    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lkotlin/time/Duration;->rawValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "0s"

    goto/16 :goto_b

    :cond_0
    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_b

    :cond_1
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_b

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v5

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_4

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v4, :cond_5

    invoke-static {v0, v1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    :cond_5
    sget-object v4, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_1

    :cond_6
    sget-object v4, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    const/16 v4, 0x18

    int-to-long v13, v4

    rem-long/2addr v11, v13

    long-to-int v4, v11

    :goto_1
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v11

    const/16 v12, 0x3c

    if-eqz v11, :cond_7

    move-wide v15, v2

    move v2, v5

    goto :goto_2

    :cond_7
    sget-object v11, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v11}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    move-wide v15, v2

    int-to-long v2, v12

    rem-long/2addr v13, v2

    long-to-int v2, v13

    :goto_2
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v3}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    int-to-long v11, v12

    rem-long/2addr v13, v11

    long-to-int v3, v13

    :goto_3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v0

    cmp-long v1, v9, v15

    if-eqz v1, :cond_9

    move v1, v6

    goto :goto_4

    :cond_9
    move v1, v5

    :goto_4
    if-eqz v4, :cond_a

    move v11, v6

    goto :goto_5

    :cond_a
    move v11, v5

    :goto_5
    if-eqz v2, :cond_b

    move v12, v6

    goto :goto_6

    :cond_b
    move v12, v5

    :goto_6
    if-nez v3, :cond_d

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v13, v5

    goto :goto_8

    :cond_d
    :goto_7
    move v13, v6

    :goto_8
    if-eqz v1, :cond_e

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v6

    :cond_e
    const/16 v9, 0x20

    if-nez v11, :cond_f

    if-eqz v1, :cond_11

    if-nez v12, :cond_f

    if-eqz v13, :cond_11

    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-lez v5, :cond_10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x68

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v10

    :cond_11
    if-nez v12, :cond_12

    if-eqz v13, :cond_14

    if-nez v11, :cond_12

    if-eqz v1, :cond_14

    :cond_12
    add-int/lit8 v4, v5, 0x1

    if-lez v5, :cond_13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x6d

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    :cond_14
    if-eqz v13, :cond_1a

    add-int/lit8 v2, v5, 0x1

    if-lez v5, :cond_15

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    if-nez v3, :cond_19

    if-nez v1, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_16

    goto :goto_9

    :cond_16
    const v1, 0xf4240

    if-lt v0, v1, :cond_17

    div-int v9, v0, v1

    rem-int v10, v0, v1

    const-string v12, "ms"

    const/4 v13, 0x0

    const/4 v11, 0x6

    invoke-static/range {v8 .. v13}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_a

    :cond_17
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_18

    div-int/lit16 v9, v0, 0x3e8

    rem-int/lit16 v10, v0, 0x3e8

    const-string/jumbo v12, "us"

    const/4 v13, 0x0

    const/4 v11, 0x3

    invoke-static/range {v8 .. v13}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_a

    :cond_18
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    :goto_9
    const-string/jumbo v12, "s"

    const/4 v13, 0x0

    const/16 v11, 0x9

    move v10, v0

    move v9, v3

    invoke-static/range {v8 .. v13}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_a
    move v5, v2

    :cond_1a
    if-eqz v7, :cond_1b

    if-le v5, v6, :cond_1b

    const/16 v0, 0x28

    invoke-virtual {v8, v6, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method
