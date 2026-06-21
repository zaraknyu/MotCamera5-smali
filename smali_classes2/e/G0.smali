.class public final Le/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Le/G0;

.field public static final f:Le/G0;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Le/c1;->$r8$clinit:I

    new-instance v0, Le/G0;

    sget-wide v1, Le/d1;->e:J

    invoke-direct {v0, v1, v2}, Le/G0;-><init>(J)V

    sput-object v0, Le/G0;->e:Le/G0;

    sget v0, Le/b1;->$r8$clinit:I

    new-instance v0, Le/G0;

    sget-wide v1, Le/d1;->d:J

    invoke-direct {v0, v1, v2}, Le/G0;-><init>(J)V

    sput-object v0, Le/G0;->f:Le/G0;

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 11

    const-wide v0, 0xff888888L

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v3

    const-wide v0, 0xff5eaaf7L

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v5

    const-wide v0, 0xff1d80f5L

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    move-object v2, p0

    move-wide v7, p1

    .line 9
    invoke-direct/range {v2 .. v10}, Le/G0;-><init>(JJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/G0;->a:J

    .line 3
    iput-wide p3, p0, Le/G0;->b:J

    .line 4
    iput-wide p5, p0, Le/G0;->c:J

    .line 5
    iput-wide p7, p0, Le/G0;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/G0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/G0;

    iget-wide v3, p0, Le/G0;->a:J

    iget-wide v5, p1, Le/G0;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/G0;->b:J

    iget-wide v5, p1, Le/G0;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/G0;->c:J

    iget-wide v5, p1, Le/G0;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/G0;->d:J

    iget-wide p0, p1, Le/G0;->d:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/G0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/G0;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/G0;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/G0;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Le/G0;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Le/G0;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Le/G0;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Le/G0;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ReviewColors(filterThumbnailBorder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", modeSelected="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageIndicatorContent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailSelectedBorder="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
