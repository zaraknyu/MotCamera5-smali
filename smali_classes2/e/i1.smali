.class public final Le/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Le/k1;

.field public final B:Le/a1;

.field public final C:Le/a0;

.field public final D:Le/Z0;

.field public final E:Le/b;

.field public final F:Le/y;

.field public final G:Le/G0;

.field public final H:Le/f1;

.field public final a:Z

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

.field public final v:Le/h1;

.field public final w:Le/X0;

.field public final x:Le/Y0;

.field public final y:Le/e1;

.field public final z:Le/g1;


# direct methods
.method public constructor <init>(ZJJJJJJJJJJJJJJJJJJ)V
    .locals 55

    .line 37
    sget-wide v38, Le/c1;->m:J

    .line 38
    sget-wide v5, Le/d1;->c:J

    .line 39
    new-instance v42, Le/h1;

    .line 40
    sget-wide v1, Le/d1;->a:J

    .line 41
    sget-wide v3, Le/d1;->b:J

    .line 42
    sget-wide v7, Le/d1;->d:J

    .line 43
    sget-wide v9, Le/d1;->e:J

    .line 44
    sget-wide v11, Le/d1;->f:J

    .line 45
    sget-wide v13, Le/d1;->g:J

    .line 46
    sget-wide v15, Le/d1;->h:J

    .line 47
    sget-wide v17, Landroidx/compose/ui/graphics/Color;->White:J

    .line 48
    sget-wide v19, Le/d1;->j:J

    .line 49
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 50
    sget-wide v23, Le/d1;->l:J

    .line 51
    sget-wide v25, Le/d1;->m:J

    .line 52
    sget-wide v27, Landroidx/compose/ui/graphics/Color;->Transparent:J

    move-object/from16 v0, v42

    .line 53
    invoke-direct/range {v0 .. v28}, Le/h1;-><init>(JJJJJJJJJJJJJJ)V

    .line 54
    sget-object v0, Le/X0;->y:Le/X0;

    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Le/X0;->y:Le/X0;

    :goto_0
    move-object/from16 v43, v0

    goto :goto_1

    .line 56
    :cond_0
    sget-object v0, Le/X0;->z:Le/X0;

    goto :goto_0

    .line 57
    :goto_1
    sget-object v0, Le/Y0;->l:Le/Y0;

    if-eqz p1, :cond_1

    .line 58
    sget-object v0, Le/Y0;->l:Le/Y0;

    :goto_2
    move-object/from16 v44, v0

    goto :goto_3

    .line 59
    :cond_1
    sget-object v0, Le/Y0;->m:Le/Y0;

    goto :goto_2

    .line 60
    :goto_3
    sget-object v0, Le/e1;->g:Le/e1;

    if-eqz p1, :cond_2

    .line 61
    sget-object v0, Le/e1;->g:Le/e1;

    :goto_4
    move-object/from16 v45, v0

    goto :goto_5

    .line 62
    :cond_2
    sget-object v0, Le/e1;->h:Le/e1;

    goto :goto_4

    .line 63
    :goto_5
    sget-object v0, Le/g1;->e:Le/g1;

    if-eqz p1, :cond_3

    .line 64
    sget-object v0, Le/g1;->e:Le/g1;

    :goto_6
    move-object/from16 v46, v0

    goto :goto_7

    .line 65
    :cond_3
    sget-object v0, Le/g1;->f:Le/g1;

    goto :goto_6

    .line 66
    :goto_7
    sget-object v0, Le/k1;->e:Le/k1;

    if-eqz p1, :cond_4

    .line 67
    sget-object v0, Le/k1;->e:Le/k1;

    :goto_8
    move-object/from16 v47, v0

    goto :goto_9

    .line 68
    :cond_4
    sget-object v0, Le/k1;->f:Le/k1;

    goto :goto_8

    .line 69
    :goto_9
    sget-object v0, Le/a1;->c:Le/a1;

    if-eqz p1, :cond_5

    .line 70
    sget-object v0, Le/a1;->c:Le/a1;

    :goto_a
    move-object/from16 v48, v0

    goto :goto_b

    .line 71
    :cond_5
    sget-object v0, Le/a1;->d:Le/a1;

    goto :goto_a

    .line 72
    :goto_b
    sget-object v0, Le/a0;->i:Le/a0;

    if-eqz p1, :cond_6

    .line 73
    sget-object v0, Le/a0;->i:Le/a0;

    :goto_c
    move-object/from16 v49, v0

    goto :goto_d

    .line 74
    :cond_6
    sget-object v0, Le/a0;->j:Le/a0;

    goto :goto_c

    .line 75
    :goto_d
    sget-object v0, Le/Z0;->o:Le/Z0;

    if-eqz p1, :cond_7

    .line 76
    sget-object v0, Le/Z0;->o:Le/Z0;

    :goto_e
    move-object/from16 v50, v0

    goto :goto_f

    .line 77
    :cond_7
    sget-object v0, Le/Z0;->p:Le/Z0;

    goto :goto_e

    .line 78
    :goto_f
    sget-object v0, Le/b;->k:Le/b;

    if-eqz p1, :cond_8

    .line 79
    sget-object v0, Le/b;->k:Le/b;

    :goto_10
    move-object/from16 v51, v0

    goto :goto_11

    .line 80
    :cond_8
    sget-object v0, Le/b;->l:Le/b;

    goto :goto_10

    .line 81
    :goto_11
    sget-object v0, Le/y;->f:Le/y;

    if-eqz p1, :cond_9

    .line 82
    sget-object v0, Le/y;->f:Le/y;

    :goto_12
    move-object/from16 v52, v0

    goto :goto_13

    .line 83
    :cond_9
    sget-object v0, Le/y;->g:Le/y;

    goto :goto_12

    .line 84
    :goto_13
    sget-object v0, Le/G0;->e:Le/G0;

    if-eqz p1, :cond_a

    .line 85
    sget-object v0, Le/G0;->e:Le/G0;

    :goto_14
    move-object/from16 v53, v0

    goto :goto_15

    .line 86
    :cond_a
    sget-object v0, Le/G0;->f:Le/G0;

    goto :goto_14

    .line 87
    :goto_15
    sget-object v0, Le/f1;->d:Le/f1;

    if-eqz p1, :cond_b

    .line 88
    sget-object v0, Le/f1;->d:Le/f1;

    :goto_16
    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move-wide/from16 v28, p28

    move-wide/from16 v30, p30

    move-wide/from16 v32, p32

    move-wide/from16 v34, p34

    move-wide/from16 v36, p36

    move-object/from16 v54, v0

    move-wide/from16 v40, v5

    move-object/from16 v0, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    goto :goto_17

    .line 89
    :cond_b
    sget-object v0, Le/f1;->e:Le/f1;

    goto :goto_16

    .line 90
    :goto_17
    invoke-direct/range {v0 .. v54}, Le/i1;-><init>(ZJJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;)V

    return-void
.end method

.method public constructor <init>(ZJJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;)V
    .locals 14

    move-object/from16 v0, p43

    move-object/from16 v1, p44

    move-object/from16 v2, p45

    move-object/from16 v3, p46

    move-object/from16 v4, p47

    move-object/from16 v5, p48

    move-object/from16 v6, p49

    move-object/from16 v7, p50

    move-object/from16 v8, p51

    move-object/from16 v9, p52

    move-object/from16 v10, p53

    move-object/from16 v11, p54

    .line 1
    const-string v12, "basic"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "button"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "dialog"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "menu"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "toast"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "coachmark"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "onboarding"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "capture"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "bulkScan"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "crop"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "review"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "drawing"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Le/i1;->a:Z

    move-wide/from16 v12, p2

    .line 4
    iput-wide v12, p0, Le/i1;->b:J

    move-wide/from16 v12, p4

    .line 5
    iput-wide v12, p0, Le/i1;->c:J

    move-wide/from16 v12, p6

    .line 6
    iput-wide v12, p0, Le/i1;->d:J

    move-wide/from16 v12, p8

    .line 7
    iput-wide v12, p0, Le/i1;->e:J

    move-wide/from16 v12, p10

    .line 8
    iput-wide v12, p0, Le/i1;->f:J

    move-wide/from16 v12, p12

    .line 9
    iput-wide v12, p0, Le/i1;->g:J

    move-wide/from16 v12, p14

    .line 10
    iput-wide v12, p0, Le/i1;->h:J

    move-wide/from16 v12, p16

    .line 11
    iput-wide v12, p0, Le/i1;->i:J

    move-wide/from16 v12, p18

    .line 12
    iput-wide v12, p0, Le/i1;->j:J

    move-wide/from16 v12, p20

    .line 13
    iput-wide v12, p0, Le/i1;->k:J

    move-wide/from16 v12, p22

    .line 14
    iput-wide v12, p0, Le/i1;->l:J

    move-wide/from16 v12, p24

    .line 15
    iput-wide v12, p0, Le/i1;->m:J

    move-wide/from16 v12, p26

    .line 16
    iput-wide v12, p0, Le/i1;->n:J

    move-wide/from16 v12, p28

    .line 17
    iput-wide v12, p0, Le/i1;->o:J

    move-wide/from16 v12, p30

    .line 18
    iput-wide v12, p0, Le/i1;->p:J

    move-wide/from16 v12, p32

    .line 19
    iput-wide v12, p0, Le/i1;->q:J

    move-wide/from16 v12, p34

    .line 20
    iput-wide v12, p0, Le/i1;->r:J

    move-wide/from16 v12, p36

    .line 21
    iput-wide v12, p0, Le/i1;->s:J

    move-wide/from16 v12, p38

    .line 22
    iput-wide v12, p0, Le/i1;->t:J

    move-wide/from16 v12, p40

    .line 23
    iput-wide v12, p0, Le/i1;->u:J

    move-object/from16 p1, p42

    .line 24
    iput-object p1, p0, Le/i1;->v:Le/h1;

    .line 25
    iput-object v0, p0, Le/i1;->w:Le/X0;

    .line 26
    iput-object v1, p0, Le/i1;->x:Le/Y0;

    .line 27
    iput-object v2, p0, Le/i1;->y:Le/e1;

    .line 28
    iput-object v3, p0, Le/i1;->z:Le/g1;

    .line 29
    iput-object v4, p0, Le/i1;->A:Le/k1;

    .line 30
    iput-object v5, p0, Le/i1;->B:Le/a1;

    .line 31
    iput-object v6, p0, Le/i1;->C:Le/a0;

    .line 32
    iput-object v7, p0, Le/i1;->D:Le/Z0;

    .line 33
    iput-object v8, p0, Le/i1;->E:Le/b;

    .line 34
    iput-object v9, p0, Le/i1;->F:Le/y;

    .line 35
    iput-object v10, p0, Le/i1;->G:Le/G0;

    .line 36
    iput-object v11, p0, Le/i1;->H:Le/f1;

    return-void
.end method

.method public static a(Le/i1;JJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;II)Le/i1;
    .locals 55

    move-object/from16 v0, p0

    move/from16 v1, p54

    iget-boolean v2, v0, Le/i1;->a:Z

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    iget-wide v3, v0, Le/i1;->b:J

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1

    iget-wide v5, v0, Le/i1;->c:J

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_2

    iget-wide v7, v0, Le/i1;->d:J

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_3

    iget-wide v9, v0, Le/i1;->e:J

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_4

    iget-wide v11, v0, Le/i1;->f:J

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_5

    iget-wide v13, v0, Le/i1;->g:J

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit16 v15, v1, 0x80

    if-eqz v15, :cond_6

    move v15, v2

    move-wide/from16 p1, v3

    iget-wide v2, v0, Le/i1;->h:J

    goto :goto_6

    :cond_6
    move v15, v2

    move-wide/from16 p1, v3

    move-wide/from16 v2, p13

    :goto_6
    and-int/lit16 v4, v1, 0x100

    move-wide/from16 p3, v2

    if-eqz v4, :cond_7

    iget-wide v2, v0, Le/i1;->i:J

    move-wide/from16 v16, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v16, p15

    :goto_7
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_8

    iget-wide v2, v0, Le/i1;->j:J

    move-wide/from16 v18, v2

    goto :goto_8

    :cond_8
    move-wide/from16 v18, p17

    :goto_8
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_9

    iget-wide v2, v0, Le/i1;->k:J

    move-wide/from16 v20, v2

    goto :goto_9

    :cond_9
    move-wide/from16 v20, p19

    :goto_9
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_a

    iget-wide v2, v0, Le/i1;->l:J

    move-wide/from16 v22, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v22, p21

    :goto_a
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_b

    iget-wide v2, v0, Le/i1;->m:J

    move-wide/from16 v24, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v24, p23

    :goto_b
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_c

    iget-wide v2, v0, Le/i1;->n:J

    move-wide/from16 v26, v2

    goto :goto_c

    :cond_c
    move-wide/from16 v26, p25

    :goto_c
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_d

    iget-wide v2, v0, Le/i1;->o:J

    move-wide/from16 v28, v2

    goto :goto_d

    :cond_d
    move-wide/from16 v28, p27

    :goto_d
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_e

    iget-wide v2, v0, Le/i1;->p:J

    move-wide/from16 v30, v2

    goto :goto_e

    :cond_e
    move-wide/from16 v30, p29

    :goto_e
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    iget-wide v2, v0, Le/i1;->q:J

    move-wide/from16 v32, v2

    goto :goto_f

    :cond_f
    move-wide/from16 v32, p31

    :goto_f
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_10

    iget-wide v2, v0, Le/i1;->r:J

    move-wide/from16 v34, v2

    goto :goto_10

    :cond_10
    move-wide/from16 v34, p33

    :goto_10
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget-wide v2, v0, Le/i1;->s:J

    move-wide/from16 v36, v2

    goto :goto_11

    :cond_11
    move-wide/from16 v36, p35

    :goto_11
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_12

    iget-wide v2, v0, Le/i1;->t:J

    move-wide/from16 v38, v2

    goto :goto_12

    :cond_12
    move-wide/from16 v38, p37

    :goto_12
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    iget-wide v2, v0, Le/i1;->u:J

    move-wide/from16 v40, v2

    goto :goto_13

    :cond_13
    move-wide/from16 v40, p39

    :goto_13
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_14

    iget-object v2, v0, Le/i1;->v:Le/h1;

    goto :goto_14

    :cond_14
    move-object/from16 v2, p41

    :goto_14
    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_15

    iget-object v3, v0, Le/i1;->x:Le/Y0;

    goto :goto_15

    :cond_15
    move-object/from16 v3, p43

    :goto_15
    const/high16 v4, 0x1000000

    and-int/2addr v4, v1

    if-eqz v4, :cond_16

    iget-object v4, v0, Le/i1;->y:Le/e1;

    goto :goto_16

    :cond_16
    move-object/from16 v4, p44

    :goto_16
    const/high16 v42, 0x2000000

    and-int v42, v1, v42

    if-eqz v42, :cond_17

    iget-object v1, v0, Le/i1;->z:Le/g1;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p45

    :goto_17
    const/high16 v42, 0x4000000

    and-int v42, p54, v42

    if-eqz v42, :cond_18

    move-wide/from16 v42, v5

    iget-object v5, v0, Le/i1;->A:Le/k1;

    goto :goto_18

    :cond_18
    move-wide/from16 v42, v5

    move-object/from16 v5, p46

    :goto_18
    const/high16 v6, 0x8000000

    and-int v6, p54, v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Le/i1;->B:Le/a1;

    goto :goto_19

    :cond_19
    move-object/from16 v6, p47

    :goto_19
    const/high16 v44, 0x10000000

    and-int v44, p54, v44

    move-wide/from16 p5, v7

    if-eqz v44, :cond_1a

    iget-object v7, v0, Le/i1;->C:Le/a0;

    goto :goto_1a

    :cond_1a
    move-object/from16 v7, p48

    :goto_1a
    const/high16 v8, 0x40000000    # 2.0f

    and-int v8, p54, v8

    if-eqz v8, :cond_1b

    iget-object v8, v0, Le/i1;->E:Le/b;

    goto :goto_1b

    :cond_1b
    move-object/from16 v8, p50

    :goto_1b
    and-int/lit8 v44, p55, 0x1

    move-wide/from16 p7, v9

    if-eqz v44, :cond_1c

    iget-object v9, v0, Le/i1;->G:Le/G0;

    goto :goto_1c

    :cond_1c
    move-object/from16 v9, p52

    :goto_1c
    and-int/lit8 v10, p55, 0x2

    if-eqz v10, :cond_1d

    iget-object v0, v0, Le/i1;->H:Le/f1;

    goto :goto_1d

    :cond_1d
    move-object/from16 v0, p53

    .line 521
    :goto_1d
    const-string v10, "static"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "button"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "dialog"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "menu"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "toast"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "coachmark"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "onboarding"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "bulkScan"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "review"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "drawing"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v54, v0

    new-instance v0, Le/i1;

    move-object/from16 v50, p49

    move-object/from16 v52, p51

    move-object/from16 v46, v1

    move-object/from16 v44, v3

    move-object/from16 v45, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v49, v7

    move-object/from16 v51, v8

    move-object/from16 v53, v9

    move-wide v10, v11

    move-wide v12, v13

    move v1, v15

    move-wide/from16 v4, v42

    move-wide/from16 v14, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v43, p42

    move-object/from16 v42, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v54}, Le/i1;-><init>(ZJJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Le/l1;)V
    .locals 98

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v0, Le/i1;->b:J

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 2
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 3
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 4
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    iget-wide v5, v0, Le/i1;->c:J

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 5
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 6
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    .line 7
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, v0, Le/i1;->d:J

    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 8
    invoke-virtual {v1, v6}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 9
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    .line 10
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v0, Le/i1;->e:J

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 11
    invoke-virtual {v1, v8}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 12
    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->value:J

    .line 13
    new-instance v10, Landroidx/compose/ui/graphics/Color;

    iget-wide v11, v0, Le/i1;->f:J

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 14
    invoke-virtual {v1, v10}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/Color;

    .line 15
    iget-wide v10, v10, Landroidx/compose/ui/graphics/Color;->value:J

    .line 16
    new-instance v12, Landroidx/compose/ui/graphics/Color;

    iget-wide v13, v0, Le/i1;->g:J

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 17
    invoke-virtual {v1, v12}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/graphics/Color;

    .line 18
    iget-wide v12, v12, Landroidx/compose/ui/graphics/Color;->value:J

    .line 19
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide v15, v2

    iget-wide v2, v0, Le/i1;->h:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 20
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 21
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 22
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v17, v2

    iget-wide v2, v0, Le/i1;->i:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 23
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 24
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 25
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v19, v2

    iget-wide v2, v0, Le/i1;->j:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 26
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 27
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 28
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v21, v2

    iget-wide v2, v0, Le/i1;->k:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 29
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 30
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 31
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v23, v2

    iget-wide v2, v0, Le/i1;->l:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 32
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 33
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 34
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v25, v2

    iget-wide v2, v0, Le/i1;->m:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 35
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 36
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 37
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v27, v2

    iget-wide v2, v0, Le/i1;->n:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 38
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 39
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 40
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v29, v2

    iget-wide v2, v0, Le/i1;->o:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 41
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 42
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 43
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v31, v2

    iget-wide v2, v0, Le/i1;->p:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 44
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 45
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 46
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v33, v2

    iget-wide v2, v0, Le/i1;->q:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 47
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 48
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 49
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v35, v2

    iget-wide v2, v0, Le/i1;->r:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 50
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 51
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 52
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v37, v2

    iget-wide v2, v0, Le/i1;->s:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 53
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 54
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 55
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v39, v2

    iget-wide v2, v0, Le/i1;->t:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 56
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 57
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 58
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v41, v2

    iget-wide v2, v0, Le/i1;->u:J

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 59
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 60
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 61
    iget-object v14, v0, Le/i1;->v:Le/h1;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v43, v2

    .line 62
    iget-wide v2, v14, Le/h1;->a:J

    move-wide/from16 v45, v4

    .line 63
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 64
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 65
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 66
    iget-wide v4, v14, Le/h1;->b:J

    move-wide/from16 v48, v2

    .line 67
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 68
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 69
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 70
    iget-wide v4, v14, Le/h1;->c:J

    move-wide/from16 v50, v2

    .line 71
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 72
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 73
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 74
    iget-wide v4, v14, Le/h1;->d:J

    move-wide/from16 v52, v2

    .line 75
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 76
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 77
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 78
    iget-wide v4, v14, Le/h1;->e:J

    move-wide/from16 v54, v2

    .line 79
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 80
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 81
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 82
    iget-wide v4, v14, Le/h1;->f:J

    move-wide/from16 v56, v2

    .line 83
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 84
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 85
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 86
    iget-wide v4, v14, Le/h1;->g:J

    move-wide/from16 v58, v2

    .line 87
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 88
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 89
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 90
    iget-wide v4, v14, Le/h1;->h:J

    move-wide/from16 v60, v2

    .line 91
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 92
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 93
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 94
    iget-wide v4, v14, Le/h1;->i:J

    move-wide/from16 v62, v2

    .line 95
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 96
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 97
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 98
    iget-wide v4, v14, Le/h1;->j:J

    move-wide/from16 v64, v2

    .line 99
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 100
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 101
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 102
    iget-wide v4, v14, Le/h1;->k:J

    move-wide/from16 v66, v2

    .line 103
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 104
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 105
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 106
    iget-wide v4, v14, Le/h1;->l:J

    move-wide/from16 v68, v2

    .line 107
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 108
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 109
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 110
    iget-wide v4, v14, Le/h1;->m:J

    move-wide/from16 v70, v2

    .line 111
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 112
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 113
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 114
    iget-wide v4, v14, Le/h1;->n:J

    .line 115
    new-instance v47, Le/h1;

    move-wide/from16 v72, v2

    move-wide/from16 v74, v4

    invoke-direct/range {v47 .. v75}, Le/h1;-><init>(JJJJJJJJJJJJJJ)V

    .line 116
    iget-object v2, v0, Le/i1;->w:Le/X0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget-wide v3, v2, Le/X0;->a:J

    .line 118
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 119
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 120
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v49, v3

    .line 121
    iget-wide v3, v2, Le/X0;->b:J

    .line 122
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 123
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 124
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v51, v3

    .line 125
    iget-wide v3, v2, Le/X0;->c:J

    .line 126
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 127
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 128
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v53, v3

    .line 129
    iget-wide v3, v2, Le/X0;->d:J

    .line 130
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 131
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 132
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v55, v3

    .line 133
    iget-wide v3, v2, Le/X0;->e:J

    .line 134
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 135
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 136
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v57, v3

    .line 137
    iget-wide v3, v2, Le/X0;->f:J

    .line 138
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 139
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 140
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v59, v3

    .line 141
    iget-wide v3, v2, Le/X0;->g:J

    .line 142
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 143
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 144
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v61, v3

    .line 145
    iget-wide v3, v2, Le/X0;->h:J

    .line 146
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 147
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 148
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v63, v3

    .line 149
    iget-wide v3, v2, Le/X0;->i:J

    .line 150
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 151
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 152
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v65, v3

    .line 153
    iget-wide v3, v2, Le/X0;->j:J

    .line 154
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 155
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 156
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v67, v3

    .line 157
    iget-wide v3, v2, Le/X0;->k:J

    .line 158
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 159
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 160
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v69, v3

    .line 161
    iget-wide v3, v2, Le/X0;->l:J

    .line 162
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 163
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 164
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v71, v3

    .line 165
    iget-wide v3, v2, Le/X0;->n:J

    .line 166
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 167
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 168
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v75, v3

    .line 169
    iget-wide v3, v2, Le/X0;->o:J

    .line 170
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 171
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 172
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v77, v3

    .line 173
    iget-wide v3, v2, Le/X0;->p:J

    .line 174
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 175
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 176
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v79, v3

    .line 177
    iget-wide v3, v2, Le/X0;->m:J

    .line 178
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 179
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 180
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v73, v3

    .line 181
    iget-wide v3, v2, Le/X0;->q:J

    .line 182
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 183
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 184
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v81, v3

    .line 185
    iget-wide v3, v2, Le/X0;->r:J

    .line 186
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 187
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 188
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v83, v3

    .line 189
    iget-wide v3, v2, Le/X0;->s:J

    .line 190
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 191
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 192
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v85, v3

    .line 193
    iget-wide v3, v2, Le/X0;->t:J

    .line 194
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 195
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 196
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v87, v3

    .line 197
    iget-wide v3, v2, Le/X0;->u:J

    .line 198
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 199
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 200
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v89, v3

    .line 201
    iget-wide v3, v2, Le/X0;->v:J

    .line 202
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 203
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 204
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v91, v3

    .line 205
    iget-wide v3, v2, Le/X0;->w:J

    .line 206
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 207
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 208
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v93, v3

    .line 209
    iget-wide v2, v2, Le/X0;->x:J

    .line 210
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 211
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 212
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 213
    new-instance v48, Le/X0;

    move-wide/from16 v95, v2

    invoke-direct/range {v48 .. v96}, Le/X0;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 214
    iget-object v2, v0, Le/i1;->x:Le/Y0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iget-wide v3, v2, Le/Y0;->a:J

    .line 216
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 217
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 218
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v50, v3

    .line 219
    iget-wide v3, v2, Le/Y0;->b:J

    .line 220
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 221
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 222
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v52, v3

    .line 223
    iget-wide v3, v2, Le/Y0;->c:J

    .line 224
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 225
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 226
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v54, v3

    .line 227
    iget-wide v3, v2, Le/Y0;->d:J

    .line 228
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 229
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 230
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v56, v3

    .line 231
    iget-wide v3, v2, Le/Y0;->e:J

    .line 232
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 233
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 234
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v58, v3

    .line 235
    iget-wide v3, v2, Le/Y0;->f:J

    .line 236
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 237
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 238
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v60, v3

    .line 239
    iget-wide v3, v2, Le/Y0;->g:J

    .line 240
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 241
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 242
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v62, v3

    .line 243
    iget-wide v3, v2, Le/Y0;->h:J

    .line 244
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 245
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 246
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v64, v3

    .line 247
    iget-wide v3, v2, Le/Y0;->i:J

    .line 248
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 249
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 250
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v66, v3

    .line 251
    iget-wide v3, v2, Le/Y0;->j:J

    .line 252
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 253
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 254
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v68, v3

    .line 255
    iget-wide v2, v2, Le/Y0;->k:J

    .line 256
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 257
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 258
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 259
    new-instance v49, Le/Y0;

    move-wide/from16 v70, v2

    invoke-direct/range {v49 .. v71}, Le/Y0;-><init>(JJJJJJJJJJJ)V

    .line 260
    iget-object v2, v0, Le/i1;->y:Le/e1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    iget-wide v3, v2, Le/e1;->a:J

    .line 262
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 263
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 264
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v51, v3

    .line 265
    iget-wide v3, v2, Le/e1;->b:J

    .line 266
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 267
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 268
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v53, v3

    .line 269
    iget-wide v3, v2, Le/e1;->c:J

    .line 270
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 271
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 272
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v55, v3

    .line 273
    iget-wide v3, v2, Le/e1;->d:J

    .line 274
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 275
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 276
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v57, v3

    .line 277
    iget-wide v3, v2, Le/e1;->e:J

    .line 278
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 279
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 280
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v59, v3

    .line 281
    iget-wide v2, v2, Le/e1;->f:J

    .line 282
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 283
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 284
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 285
    new-instance v50, Le/e1;

    move-wide/from16 v61, v2

    invoke-direct/range {v50 .. v62}, Le/e1;-><init>(JJJJJJ)V

    .line 286
    iget-object v2, v0, Le/i1;->z:Le/g1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    iget-wide v3, v2, Le/g1;->a:J

    .line 288
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 289
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 290
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v52, v3

    .line 291
    iget-wide v3, v2, Le/g1;->b:J

    .line 292
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 293
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 294
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v54, v3

    .line 295
    iget-wide v3, v2, Le/g1;->c:J

    .line 296
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 297
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 298
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v56, v3

    .line 299
    iget-wide v2, v2, Le/g1;->d:J

    .line 300
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 301
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 302
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 303
    new-instance v51, Le/g1;

    move-wide/from16 v58, v2

    invoke-direct/range {v51 .. v59}, Le/g1;-><init>(JJJJ)V

    .line 304
    iget-object v2, v0, Le/i1;->A:Le/k1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    iget-wide v3, v2, Le/k1;->a:J

    .line 306
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 307
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 308
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v53, v3

    .line 309
    iget-wide v3, v2, Le/k1;->b:J

    .line 310
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 311
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 312
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v55, v3

    .line 313
    iget-wide v3, v2, Le/k1;->c:J

    .line 314
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 315
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 316
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v57, v3

    .line 317
    iget-wide v2, v2, Le/k1;->d:J

    .line 318
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 319
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 320
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 321
    new-instance v52, Le/k1;

    move-wide/from16 v59, v2

    invoke-direct/range {v52 .. v60}, Le/k1;-><init>(JJJJ)V

    .line 322
    iget-object v2, v0, Le/i1;->B:Le/a1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iget-wide v3, v2, Le/a1;->a:J

    .line 324
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 325
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 326
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v53, v6

    .line 327
    iget-wide v5, v2, Le/a1;->b:J

    .line 328
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 329
    invoke-virtual {v1, v2}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 330
    iget-wide v5, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 331
    new-instance v2, Le/a1;

    invoke-direct {v2, v3, v4, v5, v6}, Le/a1;-><init>(JJ)V

    .line 332
    iget-object v3, v0, Le/i1;->C:Le/a0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    iget-wide v4, v3, Le/a0;->a:J

    .line 334
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 335
    invoke-virtual {v1, v6}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 336
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    .line 337
    iget-wide v6, v3, Le/a0;->b:J

    .line 338
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 339
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 340
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v56, v4

    .line 341
    iget-wide v4, v3, Le/a0;->c:J

    .line 342
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 343
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 344
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v60, v4

    .line 345
    iget-wide v4, v3, Le/a0;->d:J

    .line 346
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 347
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 348
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v62, v4

    .line 349
    iget-wide v4, v3, Le/a0;->e:J

    .line 350
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 351
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 352
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v64, v4

    .line 353
    iget-wide v4, v3, Le/a0;->f:J

    .line 354
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 355
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 356
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v66, v4

    .line 357
    iget-wide v4, v3, Le/a0;->g:J

    .line 358
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 359
    invoke-virtual {v1, v14}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 360
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    move-object v14, v2

    .line 361
    iget-wide v2, v3, Le/a0;->h:J

    move-wide/from16 v68, v4

    .line 362
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 363
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 364
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 365
    new-instance v55, Le/a0;

    move-wide/from16 v70, v2

    move-wide/from16 v58, v6

    invoke-direct/range {v55 .. v71}, Le/a0;-><init>(JJJJJJJJ)V

    .line 366
    iget-object v2, v0, Le/i1;->D:Le/Z0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iget-wide v3, v2, Le/Z0;->a:J

    .line 368
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 369
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 370
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 371
    iget-wide v5, v2, Le/Z0;->b:J

    .line 372
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 373
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 374
    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v57, v3

    .line 375
    iget-wide v3, v2, Le/Z0;->c:J

    .line 376
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 377
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 378
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v61, v3

    .line 379
    iget-wide v3, v2, Le/Z0;->d:J

    .line 380
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 381
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 382
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v63, v3

    .line 383
    iget-wide v3, v2, Le/Z0;->e:J

    .line 384
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 385
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 386
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v65, v3

    .line 387
    iget-wide v3, v2, Le/Z0;->f:J

    .line 388
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 389
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 390
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v67, v3

    .line 391
    iget-wide v3, v2, Le/Z0;->g:J

    .line 392
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 393
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 394
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v69, v3

    .line 395
    iget-wide v3, v2, Le/Z0;->h:J

    .line 396
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 397
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 398
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v71, v3

    .line 399
    iget-wide v3, v2, Le/Z0;->i:J

    .line 400
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 401
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 402
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v73, v3

    .line 403
    iget-wide v3, v2, Le/Z0;->j:J

    .line 404
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 405
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 406
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v75, v3

    .line 407
    iget-wide v3, v2, Le/Z0;->k:J

    .line 408
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 409
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 410
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v77, v3

    .line 411
    iget-wide v3, v2, Le/Z0;->l:J

    .line 412
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 413
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 414
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v79, v3

    .line 415
    iget-wide v3, v2, Le/Z0;->m:J

    .line 416
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 417
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 418
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v81, v3

    .line 419
    iget-wide v2, v2, Le/Z0;->n:J

    .line 420
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 421
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 422
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 423
    new-instance v56, Le/Z0;

    move-wide/from16 v83, v2

    move-wide/from16 v59, v5

    invoke-direct/range {v56 .. v84}, Le/Z0;-><init>(JJJJJJJJJJJJJJ)V

    .line 424
    iget-object v2, v0, Le/i1;->E:Le/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    iget-wide v3, v2, Le/b;->a:J

    .line 426
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 427
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 428
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 429
    iget-wide v5, v2, Le/b;->b:J

    .line 430
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 431
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 432
    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v58, v3

    .line 433
    iget-wide v3, v2, Le/b;->c:J

    .line 434
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 435
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 436
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v62, v3

    .line 437
    iget-wide v3, v2, Le/b;->d:J

    .line 438
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 439
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 440
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v64, v3

    .line 441
    iget-wide v3, v2, Le/b;->e:J

    .line 442
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 443
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 444
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v66, v3

    .line 445
    iget-wide v3, v2, Le/b;->f:J

    .line 446
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 447
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 448
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v68, v3

    .line 449
    iget-wide v3, v2, Le/b;->g:J

    .line 450
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 451
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 452
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v70, v3

    .line 453
    iget-wide v3, v2, Le/b;->h:J

    .line 454
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 455
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 456
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v72, v3

    .line 457
    iget-wide v3, v2, Le/b;->i:J

    .line 458
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 459
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 460
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v74, v3

    .line 461
    iget-wide v2, v2, Le/b;->j:J

    .line 462
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 463
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 464
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 465
    new-instance v57, Le/b;

    move-wide/from16 v76, v2

    move-wide/from16 v60, v5

    invoke-direct/range {v57 .. v77}, Le/b;-><init>(JJJJJJJJJJ)V

    .line 466
    iget-object v2, v0, Le/i1;->F:Le/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    iget-wide v3, v2, Le/y;->a:J

    .line 468
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 469
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 470
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 471
    iget-wide v5, v2, Le/y;->b:J

    .line 472
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 473
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 474
    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v59, v3

    .line 475
    iget-wide v3, v2, Le/y;->c:J

    .line 476
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 477
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 478
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v63, v3

    .line 479
    iget-wide v3, v2, Le/y;->d:J

    .line 480
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 481
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 482
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v65, v3

    .line 483
    iget-wide v2, v2, Le/y;->e:J

    .line 484
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 485
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 486
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 487
    new-instance v58, Le/y;

    move-wide/from16 v67, v2

    move-wide/from16 v61, v5

    invoke-direct/range {v58 .. v68}, Le/y;-><init>(JJJJJ)V

    .line 488
    iget-object v2, v0, Le/i1;->G:Le/G0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    iget-wide v3, v2, Le/G0;->a:J

    .line 490
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 491
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 492
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 493
    iget-wide v5, v2, Le/G0;->c:J

    .line 494
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 495
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 496
    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v60, v3

    .line 497
    iget-wide v3, v2, Le/G0;->b:J

    .line 498
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 499
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 500
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v62, v3

    .line 501
    iget-wide v2, v2, Le/G0;->d:J

    .line 502
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 503
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 504
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 505
    new-instance v59, Le/G0;

    move-wide/from16 v66, v2

    move-wide/from16 v64, v5

    invoke-direct/range {v59 .. v67}, Le/G0;-><init>(JJJJ)V

    .line 506
    iget-object v2, v0, Le/i1;->H:Le/f1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    iget-wide v3, v2, Le/f1;->a:J

    .line 508
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 509
    invoke-virtual {v1, v5}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 510
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 511
    iget-wide v5, v2, Le/f1;->b:J

    .line 512
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 513
    invoke-virtual {v1, v7}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 514
    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    move-wide/from16 v61, v3

    .line 515
    iget-wide v2, v2, Le/f1;->c:J

    .line 516
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 517
    invoke-virtual {v1, v4}, Le/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 518
    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 519
    new-instance v60, Le/f1;

    move-wide/from16 v65, v1

    move-wide/from16 v63, v5

    invoke-direct/range {v60 .. v66}, Le/f1;-><init>(JJJ)V

    move-wide/from16 v5, v53

    const/16 v54, 0x1

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v97, v47

    move-object/from16 v47, v14

    move-wide/from16 v13, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v25

    move-wide/from16 v25, v29

    move-wide/from16 v29, v33

    move-wide/from16 v33, v37

    move-wide/from16 v37, v41

    move-object/from16 v41, v97

    move-object/from16 v42, v48

    move-object/from16 v48, v55

    const/16 v55, 0x0

    move-wide v1, v15

    move-wide/from16 v15, v19

    move-wide/from16 v19, v23

    move-wide/from16 v23, v27

    move-wide/from16 v27, v31

    move-wide/from16 v31, v35

    move-wide/from16 v35, v39

    move-wide/from16 v39, v43

    move-wide/from16 v3, v45

    move-object/from16 v43, v49

    move-object/from16 v44, v50

    move-object/from16 v45, v51

    move-object/from16 v46, v52

    move-object/from16 v49, v56

    move-object/from16 v50, v57

    move-object/from16 v51, v58

    move-object/from16 v52, v59

    move-object/from16 v53, v60

    .line 520
    invoke-static/range {v0 .. v55}, Le/i1;->a(Le/i1;JJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;II)Le/i1;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Le/i1;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Le/i1;

    iget-boolean v0, p0, Le/i1;->a:Z

    iget-boolean v1, p1, Le/i1;->a:Z

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-wide v0, p0, Le/i1;->b:J

    iget-wide v2, p1, Le/i1;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-wide v0, p0, Le/i1;->c:J

    iget-wide v2, p1, Le/i1;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p0, Le/i1;->d:J

    iget-wide v2, p1, Le/i1;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-wide v0, p0, Le/i1;->e:J

    iget-wide v2, p1, Le/i1;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Le/i1;->f:J

    iget-wide v2, p1, Le/i1;->f:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p0, Le/i1;->g:J

    iget-wide v2, p1, Le/i1;->g:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-wide v0, p0, Le/i1;->h:J

    iget-wide v2, p1, Le/i1;->h:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Le/i1;->i:J

    iget-wide v2, p1, Le/i1;->i:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-wide v0, p0, Le/i1;->j:J

    iget-wide v2, p1, Le/i1;->j:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Le/i1;->k:J

    iget-wide v2, p1, Le/i1;->k:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    iget-wide v0, p0, Le/i1;->l:J

    iget-wide v2, p1, Le/i1;->l:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-wide v0, p0, Le/i1;->m:J

    iget-wide v2, p1, Le/i1;->m:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    iget-wide v0, p0, Le/i1;->n:J

    iget-wide v2, p1, Le/i1;->n:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    iget-wide v0, p0, Le/i1;->o:J

    iget-wide v2, p1, Le/i1;->o:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    iget-wide v0, p0, Le/i1;->p:J

    iget-wide v2, p1, Le/i1;->p:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    iget-wide v0, p0, Le/i1;->q:J

    iget-wide v2, p1, Le/i1;->q:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    iget-wide v0, p0, Le/i1;->r:J

    iget-wide v2, p1, Le/i1;->r:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    iget-wide v0, p0, Le/i1;->s:J

    iget-wide v2, p1, Le/i1;->s:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    iget-wide v0, p0, Le/i1;->t:J

    iget-wide v2, p1, Le/i1;->t:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    iget-wide v0, p0, Le/i1;->u:J

    iget-wide v2, p1, Le/i1;->u:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Le/i1;->v:Le/h1;

    iget-object v1, p1, Le/i1;->v:Le/h1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Le/i1;->w:Le/X0;

    iget-object v1, p1, Le/i1;->w:Le/X0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Le/i1;->x:Le/Y0;

    iget-object v1, p1, Le/i1;->x:Le/Y0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Le/i1;->y:Le/e1;

    iget-object v1, p1, Le/i1;->y:Le/e1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    iget-object v0, p0, Le/i1;->z:Le/g1;

    iget-object v1, p1, Le/i1;->z:Le/g1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    iget-object v0, p0, Le/i1;->A:Le/k1;

    iget-object v1, p1, Le/i1;->A:Le/k1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    iget-object v0, p0, Le/i1;->B:Le/a1;

    iget-object v1, p1, Le/i1;->B:Le/a1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    iget-object v0, p0, Le/i1;->C:Le/a0;

    iget-object v1, p1, Le/i1;->C:Le/a0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    iget-object v0, p0, Le/i1;->D:Le/Z0;

    iget-object v1, p1, Le/i1;->D:Le/Z0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    iget-object v0, p0, Le/i1;->E:Le/b;

    iget-object v1, p1, Le/i1;->E:Le/b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    iget-object v0, p0, Le/i1;->F:Le/y;

    iget-object v1, p1, Le/i1;->F:Le/y;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    iget-object v0, p0, Le/i1;->G:Le/G0;

    iget-object v1, p1, Le/i1;->G:Le/G0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    iget-object p0, p0, Le/i1;->H:Le/f1;

    iget-object p1, p1, Le/i1;->H:Le/f1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Le/i1;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/i1;->b:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->c:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->d:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->e:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->f:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->g:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->h:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->i:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->j:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->k:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->l:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->m:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->n:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->o:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->p:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->q:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->r:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->s:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->t:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-wide v1, p0, Le/i1;->u:J

    invoke-static {v0, v1, v2}, Le/W;->a(IJ)I

    move-result v0

    iget-object v1, p0, Le/i1;->v:Le/h1;

    invoke-virtual {v1}, Le/h1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->w:Le/X0;

    invoke-virtual {v0}, Le/X0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/i1;->x:Le/Y0;

    invoke-virtual {v1}, Le/Y0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->y:Le/e1;

    invoke-virtual {v0}, Le/e1;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/i1;->z:Le/g1;

    invoke-virtual {v1}, Le/g1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->A:Le/k1;

    invoke-virtual {v0}, Le/k1;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/i1;->B:Le/a1;

    invoke-virtual {v1}, Le/a1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->C:Le/a0;

    invoke-virtual {v0}, Le/a0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/i1;->D:Le/Z0;

    invoke-virtual {v1}, Le/Z0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->E:Le/b;

    invoke-virtual {v0}, Le/b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/i1;->F:Le/y;

    invoke-virtual {v1}, Le/y;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le/i1;->G:Le/G0;

    invoke-virtual {v0}, Le/G0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Le/i1;->H:Le/f1;

    invoke-virtual {p0}, Le/f1;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Le/i1;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Le/i1;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Le/i1;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Le/i1;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Le/i1;->f:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Le/i1;->g:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Le/i1;->h:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Le/i1;->i:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v0, Le/i1;->j:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Le/i1;->k:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Le/i1;->l:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Le/i1;->m:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Le/i1;->n:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Le/i1;->o:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    iget-wide v14, v0, Le/i1;->p:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v14

    iget-wide v14, v0, Le/i1;->q:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    iget-wide v14, v0, Le/i1;->r:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    iget-wide v14, v0, Le/i1;->s:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    iget-wide v14, v0, Le/i1;->t:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    iget-wide v14, v0, Le/i1;->u:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v14

    const-string v14, "ScanThemeColors(isLightTheme="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v0, Le/i1;->a:Z

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", GRAY_50="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_75="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_100="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_200="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_300="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_400="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_500="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_600="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_700="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_800="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GRAY_900="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BLUE_400="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BLUE_500="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BLUE_600="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BLUE_700="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BLUE_900="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GREEN_500="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scanThemeColor="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", premiumIndicator="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newIndicator="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", static="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->v:Le/h1;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", basic="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->w:Le/X0;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", button="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->x:Le/Y0;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialog="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->y:Le/e1;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", menu="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->z:Le/g1;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toast="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->A:Le/k1;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coachmark="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->B:Le/a1;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onboarding="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->C:Le/a0;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capture="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->D:Le/Z0;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bulkScan="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->E:Le/b;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crop="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->F:Le/y;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", review="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Le/i1;->G:Le/G0;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawing="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/i1;->H:Le/f1;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
