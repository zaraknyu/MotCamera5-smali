.class public final Le/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Le/y;

.field public static final g:Le/y;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Le/y;

    sget-wide v1, Le/c1;->i:J

    const-wide v3, 0xffd5d5d5L

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v5

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Le/y;-><init>(JJJ)V

    sput-object v0, Le/y;->f:Le/y;

    sget v0, Le/b1;->$r8$clinit:I

    new-instance v1, Le/y;

    sget-wide v2, Le/c1;->g:J

    sget-wide v4, Le/b1;->e:J

    sget-wide v6, Le/b1;->i:J

    invoke-direct/range {v1 .. v7}, Le/y;-><init>(JJJ)V

    sput-object v1, Le/y;->g:Le/y;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 13

    const-wide v0, 0xff2175c8L

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v3

    .line 8
    sget-wide v0, Le/d1;->i:J

    const/high16 v2, 0x3e800000    # 0.25f

    .line 9
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v5

    move-object v2, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 10
    invoke-direct/range {v2 .. v12}, Le/y;-><init>(JJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/y;->a:J

    .line 3
    iput-wide p3, p0, Le/y;->b:J

    .line 4
    iput-wide p5, p0, Le/y;->c:J

    .line 5
    iput-wide p7, p0, Le/y;->d:J

    .line 6
    iput-wide p9, p0, Le/y;->e:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/y;

    iget-wide v3, p0, Le/y;->a:J

    iget-wide v5, p1, Le/y;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/y;->b:J

    iget-wide v5, p1, Le/y;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/y;->c:J

    iget-wide v5, p1, Le/y;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/y;->d:J

    iget-wide v5, p1, Le/y;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Le/y;->e:J

    iget-wide p0, p1, Le/y;->e:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/y;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/y;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/y;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/y;->d:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/y;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Le/y;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Le/y;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Le/y;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Le/y;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Le/y;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CropColors(handleStroke="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", handleFill="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonContent="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonSelected="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonSelectedBackground="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
