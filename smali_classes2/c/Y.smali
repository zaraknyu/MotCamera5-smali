.class public final Lc/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lc/w;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 5
    :cond_0
    new-instance p2, Lc/w;

    .line 6
    sget-object v0, Lc/Z;->a:Lc/Z;

    const-wide/16 v0, 0x0

    .line 7
    const-string v2, "INVALID"

    invoke-direct {p2, v0, v1, v2, v2}, Lc/w;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, v0, v1, p2}, Lc/Y;-><init>(IJLc/w;)V

    return-void
.end method

.method public constructor <init>(IJLc/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/Y;->a:I

    .line 3
    iput-wide p2, p0, Lc/Y;->b:J

    .line 4
    iput-object p4, p0, Lc/Y;->c:Lc/w;

    return-void
.end method

.method public static a(Lc/Y;JLc/w;I)Lc/Y;
    .locals 2

    iget v0, p0, Lc/Y;->a:I

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    iget-wide p1, p0, Lc/Y;->b:J

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    iget-object p3, p0, Lc/Y;->c:Lc/w;

    :cond_1
    const-string p0, "filterDebugData"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lc/Y;

    invoke-direct {p0, v0, p1, p2, p3}, Lc/Y;-><init>(IJLc/w;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/Y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/Y;

    iget v1, p0, Lc/Y;->a:I

    iget v3, p1, Lc/Y;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lc/Y;->b:J

    iget-wide v5, p1, Lc/Y;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lc/Y;->c:Lc/w;

    iget-object p1, p1, Lc/Y;->c:Lc/w;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lc/Y;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lc/Y;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lc/Y;->c:Lc/w;

    invoke-virtual {p0}, Lc/w;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageDebugData(pageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/Y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcCropTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/Y;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", filterDebugData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc/Y;->c:Lc/w;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
