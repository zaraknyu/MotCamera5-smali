.class public final Lc/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lc/P0;


# instance fields
.field public final a:Lc/a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/P0;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lc/P0;-><init>(Lc/a;II)V

    sput-object v0, Lc/P0;->f:Lc/P0;

    return-void
.end method

.method public constructor <init>(Lc/a;II)V
    .locals 12

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lc/a;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p1, v0, v2, v3, v4}, Lc/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_0
    move-object v6, p1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    :cond_1
    move v7, p2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 3
    invoke-direct/range {v5 .. v11}, Lc/P0;-><init>(Lc/a;IIIJ)V

    return-void
.end method

.method public constructor <init>(Lc/a;IIIJ)V
    .locals 1

    const-string v0, "crop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/P0;->a:Lc/a;

    iput p2, p0, Lc/P0;->b:I

    iput p3, p0, Lc/P0;->c:I

    iput p4, p0, Lc/P0;->d:I

    iput-wide p5, p0, Lc/P0;->e:J

    return-void
.end method

.method public static a(Lc/P0;Lc/a;IIIJI)Lc/P0;
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/P0;->a:Lc/a;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget p2, p0, Lc/P0;->b:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p3, p0, Lc/P0;->c:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget p4, p0, Lc/P0;->d:I

    :cond_3
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-wide p5, p0, Lc/P0;->e:J

    :cond_4
    move-wide v5, p5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "crop"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc/P0;

    invoke-direct/range {v0 .. v6}, Lc/P0;-><init>(Lc/a;IIIJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/P0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/P0;

    iget-object v1, p0, Lc/P0;->a:Lc/a;

    iget-object v3, p1, Lc/P0;->a:Lc/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lc/P0;->b:I

    iget v3, p1, Lc/P0;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lc/P0;->c:I

    iget v3, p1, Lc/P0;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lc/P0;->d:I

    iget v3, p1, Lc/P0;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lc/P0;->e:J

    iget-wide p0, p1, Lc/P0;->e:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lc/P0;->a:Lc/a;

    iget-object v0, v0, Lc/a;->a:[Landroid/graphics/PointF;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/P0;->b:I

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget v1, p0, Lc/P0;->c:I

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget v1, p0, Lc/P0;->d:I

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget-wide v1, p0, Lc/P0;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageState(crop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/P0;->a:Lc/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/P0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/P0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/P0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eraserUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/P0;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
