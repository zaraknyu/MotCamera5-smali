.class public final Le/Z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Le/Z0;

.field public static final p:Le/Z0;


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

.field public final l:J

.field public final m:J

.field public final n:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Le/Z0;

    sget-wide v1, Le/c1;->i:J

    sget-wide v3, Le/c1;->m:J

    sget-wide v5, Le/c1;->g:J

    const-wide v7, 0xffd5d5d5L

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v9

    move-wide v7, v3

    invoke-direct/range {v0 .. v10}, Le/Z0;-><init>(JJJJJ)V

    sput-object v0, Le/Z0;->o:Le/Z0;

    new-instance v1, Le/Z0;

    sget-wide v2, Le/b1;->k:J

    sget-wide v4, Le/b1;->m:J

    const-wide v6, 0xfff7f7f7L

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v6

    sget-wide v10, Le/b1;->d:J

    move-wide v8, v4

    invoke-direct/range {v1 .. v11}, Le/Z0;-><init>(JJJJJ)V

    sput-object v1, Le/Z0;->p:Le/Z0;

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 29

    .line 1
    sget-wide v9, Le/d1;->i:J

    const-wide v0, 0xcc232323L

    .line 2
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v11

    .line 3
    sget-wide v15, Le/d1;->h:J

    const-wide v0, 0xe6262626L

    .line 4
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v17

    const-wide v0, 0xff707070L

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v19

    .line 6
    sget-wide v21, Le/c1;->c:J

    .line 7
    sget-wide v25, Le/d1;->f:J

    move-wide v13, v9

    move-wide/from16 v23, v9

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v27, p9

    .line 8
    invoke-direct/range {v0 .. v28}, Le/Z0;-><init>(JJJJJJJJJJJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Le/Z0;->a:J

    .line 11
    iput-wide p3, p0, Le/Z0;->b:J

    .line 12
    iput-wide p5, p0, Le/Z0;->c:J

    .line 13
    iput-wide p7, p0, Le/Z0;->d:J

    .line 14
    iput-wide p9, p0, Le/Z0;->e:J

    .line 15
    iput-wide p11, p0, Le/Z0;->f:J

    .line 16
    iput-wide p13, p0, Le/Z0;->g:J

    move-wide p1, p15

    .line 17
    iput-wide p1, p0, Le/Z0;->h:J

    move-wide/from16 p1, p17

    .line 18
    iput-wide p1, p0, Le/Z0;->i:J

    move-wide/from16 p1, p19

    .line 19
    iput-wide p1, p0, Le/Z0;->j:J

    move-wide/from16 p1, p21

    .line 20
    iput-wide p1, p0, Le/Z0;->k:J

    move-wide/from16 p1, p23

    .line 21
    iput-wide p1, p0, Le/Z0;->l:J

    move-wide/from16 p1, p25

    .line 22
    iput-wide p1, p0, Le/Z0;->m:J

    move-wide/from16 p1, p27

    .line 23
    iput-wide p1, p0, Le/Z0;->n:J

    return-void
.end method

.method public static a(Le/Z0;JJ)Le/Z0;
    .locals 29

    move-object/from16 v0, p0

    iget-wide v1, v0, Le/Z0;->a:J

    iget-wide v3, v0, Le/Z0;->b:J

    iget-wide v5, v0, Le/Z0;->c:J

    iget-wide v11, v0, Le/Z0;->f:J

    iget-wide v13, v0, Le/Z0;->g:J

    iget-wide v7, v0, Le/Z0;->h:J

    iget-wide v9, v0, Le/Z0;->i:J

    move-wide v15, v1

    iget-wide v1, v0, Le/Z0;->j:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Le/Z0;->k:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Le/Z0;->l:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Le/Z0;->m:J

    move-wide/from16 v25, v1

    iget-wide v0, v0, Le/Z0;->n:J

    move-wide/from16 v27, v0

    new-instance v0, Le/Z0;

    move-wide/from16 v17, v9

    move-wide v1, v15

    move-wide/from16 v9, p3

    move-wide v15, v7

    move-wide/from16 v7, p1

    invoke-direct/range {v0 .. v28}, Le/Z0;-><init>(JJJJJJJJJJJJJJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/Z0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/Z0;

    iget-wide v3, p0, Le/Z0;->a:J

    iget-wide v5, p1, Le/Z0;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/Z0;->b:J

    iget-wide v5, p1, Le/Z0;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/Z0;->c:J

    iget-wide v5, p1, Le/Z0;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/Z0;->d:J

    iget-wide v5, p1, Le/Z0;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Le/Z0;->e:J

    iget-wide v5, p1, Le/Z0;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Le/Z0;->f:J

    iget-wide v5, p1, Le/Z0;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Le/Z0;->g:J

    iget-wide v5, p1, Le/Z0;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Le/Z0;->h:J

    iget-wide v5, p1, Le/Z0;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Le/Z0;->i:J

    iget-wide v5, p1, Le/Z0;->i:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Le/Z0;->j:J

    iget-wide v5, p1, Le/Z0;->j:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Le/Z0;->k:J

    iget-wide v5, p1, Le/Z0;->k:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Le/Z0;->l:J

    iget-wide v5, p1, Le/Z0;->l:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Le/Z0;->m:J

    iget-wide v5, p1, Le/Z0;->m:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Le/Z0;->n:J

    iget-wide p0, p1, Le/Z0;->n:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/Z0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/Z0;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->d:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->e:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->f:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->g:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->h:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->i:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->j:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->k:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->l:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->m:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/Z0;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Le/Z0;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Le/Z0;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Le/Z0;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Le/Z0;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Le/Z0;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Le/Z0;->f:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Le/Z0;->g:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Le/Z0;->h:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Le/Z0;->i:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, p0, Le/Z0;->j:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Le/Z0;->k:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, p0, Le/Z0;->l:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, p0, Le/Z0;->m:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, p0, Le/Z0;->n:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ScanCaptureColors(controlsContent="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", captureRingActive="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", captureRingInactive="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", liveEdgeInner="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", liveEdgeOuter="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hintBackground="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hintMessage="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bookModeOverlay="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bookModeButtonBackground="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bookModeButtonBorder="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bookModeButtonContent="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", idCardFrameFill="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", idCardFrameBorder="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", emptyThumbnailBackground="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
