.class public final Lkotlin/ULong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final data:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/ULong;->data:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lkotlin/ULong;

    iget-wide v0, p1, Lkotlin/ULong;->data:J

    iget-wide p0, p0, Lkotlin/ULong;->data:J

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr p0, v2

    xor-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/ULong;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/ULong;

    iget-wide v0, p1, Lkotlin/ULong;->data:J

    iget-wide p0, p0, Lkotlin/ULong;->data:J

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

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lkotlin/ULong;->data:J

    cmp-long p0, v2, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "toString(...)"

    if-ltz p0, :cond_0

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x1

    ushr-long v4, v2, p0

    int-to-long v6, v0

    div-long/2addr v4, v6

    shl-long/2addr v4, p0

    mul-long v8, v4, v6

    sub-long/2addr v2, v8

    cmp-long p0, v2, v6

    if-ltz p0, :cond_1

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_1
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v4, v5, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
