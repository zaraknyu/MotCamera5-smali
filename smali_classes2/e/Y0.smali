.class public final Le/Y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Le/Y0;

.field public static final m:Le/Y0;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Le/Y0;

    sget-wide v1, Le/c1;->k:J

    sget-wide v3, Le/c1;->g:J

    sget-wide v5, Le/c1;->i:J

    const-wide v7, 0xffd7373fL

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v7

    const-wide v9, 0xffd5d5d5L

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    sget-wide v11, Le/c1;->j:J

    sget-wide v13, Le/c1;->d:J

    sget-wide v15, Le/c1;->r:J

    move-wide/from16 v17, v15

    invoke-direct/range {v0 .. v18}, Le/Y0;-><init>(JJJJJJJJJ)V

    sput-object v0, Le/Y0;->l:Le/Y0;

    new-instance v1, Le/Y0;

    sget-wide v2, Le/b1;->k:J

    sget-wide v4, Le/b1;->g:J

    sget-wide v6, Le/b1;->i:J

    const-wide v8, 0xffec5b62L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v8

    sget-wide v10, Le/b1;->j:J

    sget-wide v14, Le/b1;->d:J

    sget-wide v16, Le/b1;->r:J

    move-wide v12, v10

    move-wide/from16 v18, v16

    invoke-direct/range {v1 .. v19}, Le/Y0;-><init>(JJJJJJJJJ)V

    sput-object v1, Le/Y0;->m:Le/Y0;

    return-void
.end method

.method public constructor <init>(JJJJJJJJJ)V
    .locals 23

    .line 1
    sget-wide v7, Le/d1;->i:J

    const-wide v0, 0xff959595L

    .line 2
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v21, p17

    .line 3
    invoke-direct/range {v0 .. v22}, Le/Y0;-><init>(JJJJJJJJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Le/Y0;->a:J

    .line 6
    iput-wide p3, p0, Le/Y0;->b:J

    .line 7
    iput-wide p5, p0, Le/Y0;->c:J

    .line 8
    iput-wide p7, p0, Le/Y0;->d:J

    .line 9
    iput-wide p9, p0, Le/Y0;->e:J

    .line 10
    iput-wide p11, p0, Le/Y0;->f:J

    .line 11
    iput-wide p13, p0, Le/Y0;->g:J

    move-wide p1, p15

    .line 12
    iput-wide p1, p0, Le/Y0;->h:J

    move-wide/from16 p1, p17

    .line 13
    iput-wide p1, p0, Le/Y0;->i:J

    move-wide/from16 p1, p19

    .line 14
    iput-wide p1, p0, Le/Y0;->j:J

    move-wide/from16 p1, p21

    .line 15
    iput-wide p1, p0, Le/Y0;->k:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/Y0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/Y0;

    iget-wide v3, p0, Le/Y0;->a:J

    iget-wide v5, p1, Le/Y0;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/Y0;->b:J

    iget-wide v5, p1, Le/Y0;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/Y0;->c:J

    iget-wide v5, p1, Le/Y0;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/Y0;->d:J

    iget-wide v5, p1, Le/Y0;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Le/Y0;->e:J

    iget-wide v5, p1, Le/Y0;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Le/Y0;->f:J

    iget-wide v5, p1, Le/Y0;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Le/Y0;->g:J

    iget-wide v5, p1, Le/Y0;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Le/Y0;->h:J

    iget-wide v5, p1, Le/Y0;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Le/Y0;->i:J

    iget-wide v5, p1, Le/Y0;->i:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Le/Y0;->j:J

    iget-wide v5, p1, Le/Y0;->j:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Le/Y0;->k:J

    iget-wide p0, p1, Le/Y0;->k:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/Y0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/Y0;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->d:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->e:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->f:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->g:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->h:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->i:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->j:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Y0;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Le/Y0;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Le/Y0;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Le/Y0;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Le/Y0;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Le/Y0;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Le/Y0;->f:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Le/Y0;->g:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Le/Y0;->h:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Le/Y0;->i:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, p0, Le/Y0;->j:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Le/Y0;->k:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ScanButtonColors(content="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", disabled="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", secondary="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filled="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", destructive="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", border="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryBorder="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", disabledBackground="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filledBackground="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", radioUnselected="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", radioSelected="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
