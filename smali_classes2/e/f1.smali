.class public final Le/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Le/f1;

.field public static final e:Le/f1;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Le/c1;->$r8$clinit:I

    new-instance v0, Le/f1;

    const v1, 0x75a3a3a3

    invoke-static {v1}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v1

    sget-wide v3, Le/c1;->m:J

    invoke-direct {v0, v1, v2, v3, v4}, Le/f1;-><init>(JJ)V

    sput-object v0, Le/f1;->d:Le/f1;

    new-instance v0, Le/f1;

    sget-wide v1, Le/b1;->k:J

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v1

    sget-wide v3, Le/b1;->m:J

    invoke-direct {v0, v1, v2, v3, v4}, Le/f1;-><init>(JJ)V

    sput-object v0, Le/f1;->e:Le/f1;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 10

    .line 1
    sget-wide v0, Le/d1;->i:J

    const v2, 0x3f4ccccd    # 0.8f

    .line 2
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-wide v8, p3

    .line 3
    invoke-direct/range {v3 .. v9}, Le/f1;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Le/f1;->a:J

    .line 6
    iput-wide p3, p0, Le/f1;->b:J

    .line 7
    iput-wide p5, p0, Le/f1;->c:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/f1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/f1;

    iget-wide v3, p0, Le/f1;->a:J

    iget-wide v5, p1, Le/f1;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/f1;->b:J

    iget-wide v5, p1, Le/f1;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/f1;->c:J

    iget-wide p0, p1, Le/f1;->c:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/f1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/f1;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/f1;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Le/f1;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Le/f1;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Le/f1;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScanDrawingColors(colorPickerItemBorder="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sizeIndicatorBackground="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sizeIndicatorStroke="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
