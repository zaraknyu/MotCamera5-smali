.class public final Le/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final y:Le/X0;

.field public static final z:Le/X0;


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

.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:J

.field public final w:J

.field public final x:J


# direct methods
.method static constructor <clinit>()V
    .locals 64

    sget-wide v1, Le/c1;->b:J

    const v0, 0x3f59999a    # 0.85f

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    const v5, 0x3f7ae148    # 0.98f

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v5

    sget-wide v7, Le/c1;->i:J

    sget-wide v9, Le/c1;->e:J

    sget-wide v11, Le/c1;->h:J

    const v13, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v17

    sget-wide v25, Le/c1;->d:J

    sget-wide v29, Le/d1;->l:J

    sget-wide v60, Le/d1;->m:J

    move v13, v0

    new-instance v0, Le/X0;

    move v15, v13

    move-wide v13, v7

    move/from16 v19, v15

    move-wide v15, v11

    move/from16 v21, v19

    move-wide/from16 v19, v9

    move/from16 v23, v21

    move-wide/from16 v21, v7

    move/from16 v27, v23

    move-wide/from16 v23, v7

    move/from16 v31, v27

    move-wide/from16 v27, v7

    move-wide/from16 v31, v60

    invoke-direct/range {v0 .. v32}, Le/X0;-><init>(JJJJJJJJJJJJJJJJ)V

    sput-object v0, Le/X0;->y:Le/X0;

    sget-wide v0, Le/b1;->a:J

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v34

    const v13, 0x3f59999a    # 0.85f

    invoke-static {v13, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v36

    sget-wide v38, Le/b1;->i:J

    sget-wide v40, Le/b1;->e:J

    const-wide v2, 0xff6a6a6aL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v42

    const-wide v2, 0xffebebebL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v44

    const-wide v2, 0xff0068d7L    # 2.113720005E-314

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v46

    const-wide v2, 0xff4b4b4bL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v48

    sget-wide v50, Le/b1;->d:J

    sget-wide v58, Le/b1;->j:J

    sget-wide v62, Le/d1;->j:J

    new-instance v31, Le/X0;

    move-wide/from16 v52, v38

    move-wide/from16 v54, v38

    move-wide/from16 v56, v50

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v63}, Le/X0;-><init>(JJJJJJJJJJJJJJJJ)V

    sput-object v31, Le/X0;->z:Le/X0;

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJJJJ)V
    .locals 50

    const/high16 v0, 0x3f000000    # 0.5f

    move-wide/from16 v8, p7

    .line 26
    invoke-static {v0, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v10

    .line 27
    sget-wide v14, Le/d1;->a:J

    .line 28
    sget-wide v16, Le/d1;->d:J

    .line 29
    sget-wide v28, Le/d1;->i:J

    const-wide v0, 0xff0265dcL

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v30

    .line 31
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v44

    const-wide v0, 0xff378ef0L

    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v46

    const-wide v0, 0xff4286f4L

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v48

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v12, p9

    move-wide/from16 v18, p11

    move-wide/from16 v20, p13

    move-wide/from16 v22, p15

    move-wide/from16 v24, p17

    move-wide/from16 v26, p19

    move-wide/from16 v32, p21

    move-wide/from16 v34, p23

    move-wide/from16 v36, p25

    move-wide/from16 v38, p27

    move-wide/from16 v40, p29

    move-wide/from16 v42, p31

    .line 34
    invoke-direct/range {v1 .. v49}, Le/X0;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/X0;->a:J

    .line 3
    iput-wide p3, p0, Le/X0;->b:J

    .line 4
    iput-wide p5, p0, Le/X0;->c:J

    .line 5
    iput-wide p7, p0, Le/X0;->d:J

    .line 6
    iput-wide p9, p0, Le/X0;->e:J

    .line 7
    iput-wide p11, p0, Le/X0;->f:J

    .line 8
    iput-wide p13, p0, Le/X0;->g:J

    move-wide p1, p15

    .line 9
    iput-wide p1, p0, Le/X0;->h:J

    move-wide/from16 p1, p17

    .line 10
    iput-wide p1, p0, Le/X0;->i:J

    move-wide/from16 p1, p19

    .line 11
    iput-wide p1, p0, Le/X0;->j:J

    move-wide/from16 p1, p21

    .line 12
    iput-wide p1, p0, Le/X0;->k:J

    move-wide/from16 p1, p23

    .line 13
    iput-wide p1, p0, Le/X0;->l:J

    move-wide/from16 p1, p25

    .line 14
    iput-wide p1, p0, Le/X0;->m:J

    move-wide/from16 p1, p27

    .line 15
    iput-wide p1, p0, Le/X0;->n:J

    move-wide/from16 p1, p29

    .line 16
    iput-wide p1, p0, Le/X0;->o:J

    move-wide/from16 p1, p31

    .line 17
    iput-wide p1, p0, Le/X0;->p:J

    move-wide/from16 p1, p33

    .line 18
    iput-wide p1, p0, Le/X0;->q:J

    move-wide/from16 p1, p35

    .line 19
    iput-wide p1, p0, Le/X0;->r:J

    move-wide/from16 p1, p37

    .line 20
    iput-wide p1, p0, Le/X0;->s:J

    move-wide/from16 p1, p39

    .line 21
    iput-wide p1, p0, Le/X0;->t:J

    move-wide/from16 p1, p41

    .line 22
    iput-wide p1, p0, Le/X0;->u:J

    move-wide/from16 p1, p43

    .line 23
    iput-wide p1, p0, Le/X0;->v:J

    move-wide/from16 p1, p45

    .line 24
    iput-wide p1, p0, Le/X0;->w:J

    move-wide/from16 p1, p47

    .line 25
    iput-wide p1, p0, Le/X0;->x:J

    return-void
.end method

.method public static a(Le/X0;JJJ)Le/X0;
    .locals 49

    move-object/from16 v0, p0

    iget-wide v1, v0, Le/X0;->a:J

    iget-wide v3, v0, Le/X0;->b:J

    iget-wide v5, v0, Le/X0;->c:J

    iget-wide v7, v0, Le/X0;->d:J

    iget-wide v9, v0, Le/X0;->e:J

    iget-wide v11, v0, Le/X0;->i:J

    iget-wide v13, v0, Le/X0;->j:J

    move-wide v15, v1

    iget-wide v1, v0, Le/X0;->k:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Le/X0;->l:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Le/X0;->m:J

    move-wide/from16 v25, v1

    iget-wide v1, v0, Le/X0;->n:J

    move-wide/from16 v27, v1

    iget-wide v1, v0, Le/X0;->o:J

    move-wide/from16 v29, v1

    iget-wide v1, v0, Le/X0;->p:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, Le/X0;->q:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, Le/X0;->r:J

    move-wide/from16 v35, v1

    iget-wide v1, v0, Le/X0;->s:J

    move-wide/from16 v37, v1

    iget-wide v1, v0, Le/X0;->t:J

    move-wide/from16 v39, v1

    iget-wide v1, v0, Le/X0;->u:J

    move-wide/from16 v41, v1

    iget-wide v1, v0, Le/X0;->v:J

    move-wide/from16 v43, v1

    iget-wide v1, v0, Le/X0;->w:J

    move-wide/from16 v45, v1

    iget-wide v0, v0, Le/X0;->x:J

    move-wide/from16 v47, v0

    new-instance v0, Le/X0;

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    move-wide v1, v15

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-direct/range {v0 .. v48}, Le/X0;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/X0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/X0;

    iget-wide v3, p0, Le/X0;->a:J

    iget-wide v5, p1, Le/X0;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Le/X0;->b:J

    iget-wide v5, p1, Le/X0;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Le/X0;->c:J

    iget-wide v5, p1, Le/X0;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/X0;->d:J

    iget-wide v5, p1, Le/X0;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Le/X0;->e:J

    iget-wide v5, p1, Le/X0;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Le/X0;->f:J

    iget-wide v5, p1, Le/X0;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Le/X0;->g:J

    iget-wide v5, p1, Le/X0;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Le/X0;->h:J

    iget-wide v5, p1, Le/X0;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Le/X0;->i:J

    iget-wide v5, p1, Le/X0;->i:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Le/X0;->j:J

    iget-wide v5, p1, Le/X0;->j:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Le/X0;->k:J

    iget-wide v5, p1, Le/X0;->k:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Le/X0;->l:J

    iget-wide v5, p1, Le/X0;->l:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Le/X0;->m:J

    iget-wide v5, p1, Le/X0;->m:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Le/X0;->n:J

    iget-wide v5, p1, Le/X0;->n:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Le/X0;->o:J

    iget-wide v5, p1, Le/X0;->o:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Le/X0;->p:J

    iget-wide v5, p1, Le/X0;->p:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Le/X0;->q:J

    iget-wide v5, p1, Le/X0;->q:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Le/X0;->r:J

    iget-wide v5, p1, Le/X0;->r:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Le/X0;->s:J

    iget-wide v5, p1, Le/X0;->s:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Le/X0;->t:J

    iget-wide v5, p1, Le/X0;->t:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Le/X0;->u:J

    iget-wide v5, p1, Le/X0;->u:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Le/X0;->v:J

    iget-wide v5, p1, Le/X0;->v:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Le/X0;->w:J

    iget-wide v5, p1, Le/X0;->w:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Le/X0;->x:J

    iget-wide p0, p1, Le/X0;->x:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Le/X0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/X0;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->d:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->e:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->f:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->g:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->h:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->i:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->j:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->k:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->l:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->m:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->n:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->o:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->p:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->q:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->r:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->s:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->t:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->u:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->v:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->w:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/X0;->x:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    iget-wide v1, v0, Le/X0;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Le/X0;->b:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Le/X0;->c:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Le/X0;->d:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Le/X0;->e:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Le/X0;->f:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Le/X0;->g:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Le/X0;->h:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v0, Le/X0;->i:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Le/X0;->j:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Le/X0;->k:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Le/X0;->l:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Le/X0;->m:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Le/X0;->n:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    iget-wide v14, v0, Le/X0;->o:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v14

    iget-wide v14, v0, Le/X0;->p:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    iget-wide v14, v0, Le/X0;->q:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    iget-wide v14, v0, Le/X0;->r:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    iget-wide v14, v0, Le/X0;->s:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    iget-wide v14, v0, Le/X0;->t:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    iget-wide v14, v0, Le/X0;->u:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    iget-wide v14, v0, Le/X0;->v:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v14

    iget-wide v14, v0, Le/X0;->w:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v14

    iget-wide v14, v0, Le/X0;->x:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ScanBasicColors(toolsBackground="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolsTransparentBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolsBackgroundOverlay="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolContent="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolContentDisabled="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressBarTint="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressBarTrack="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textInputBorder="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textInputContent="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textInputCursor="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textInputPlaceholder="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxCheckmark="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxCheckedBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxUncheckedBorder="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sliderActiveTrack="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sliderInactiveTrack="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", switchText="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", overlay="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contrastingScrim="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pulsingIndicatorOnToolsBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pulsingIndicatorOnContentBackground="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultTextHandleColor="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
