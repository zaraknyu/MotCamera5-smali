.class public final Lh/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final B:Lh/t;

.field public static final a:Lh/H;

.field public static final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public static final c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public static final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public static final e:Lh/t;

.field public static final h:Lh/t;

.field public static final i:Lh/t;

.field public static final j:Lh/t;

.field public static final k:Lh/t;

.field public static final l:Lh/t;

.field public static final m:Lh/t;

.field public static final n:Lh/t;

.field public static final o:Lh/t;

.field public static final p:Lh/t;

.field public static final q:Lh/t;

.field public static final r:Lh/t;

.field public static final s:Lh/t;

.field public static final t:Lh/t;

.field public static final u:Lh/t;

.field public static final v:Lh/t;

.field public static final w:Lh/t;

.field public static final x:Lh/t;

.field public static final y:Lh/t;

.field public static final z:Lh/t;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lh/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh/H;->a:Lh/H;

    sget-object v0, Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;->Auto:Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    sput-object v0, Lh/H;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    sget-object v0, Le/j1;->b:Le/i1;

    iget-object v2, v0, Le/i1;->w:Le/X0;

    move-object v4, v2

    iget-wide v2, v4, Le/X0;->f:J

    iget-object v5, v0, Le/i1;->D:Le/Z0;

    move-object v6, v4

    move-object v7, v5

    iget-wide v4, v7, Le/Z0;->d:J

    iget-wide v7, v7, Le/Z0;->e:J

    iget-object v0, v0, Le/i1;->F:Le/y;

    iget-wide v9, v0, Le/y;->a:J

    move-object v0, v6

    move-wide v6, v7

    move-wide v8, v9

    iget-wide v10, v0, Le/X0;->g:J

    iget-wide v12, v0, Le/X0;->h:J

    invoke-direct/range {v1 .. v13}, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;-><init>(JJJJJJ)V

    new-instance v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    sget-object v0, Le/j1;->a:Le/i1;

    iget-object v3, v0, Le/i1;->w:Le/X0;

    move-object v5, v3

    iget-wide v3, v5, Le/X0;->f:J

    iget-object v6, v0, Le/i1;->D:Le/Z0;

    move-object v7, v5

    move-object v8, v6

    iget-wide v5, v8, Le/Z0;->d:J

    iget-wide v8, v8, Le/Z0;->e:J

    iget-object v0, v0, Le/i1;->F:Le/y;

    iget-wide v10, v0, Le/y;->a:J

    move-object v0, v7

    move-wide v7, v8

    move-wide v9, v10

    iget-wide v11, v0, Le/X0;->g:J

    iget-wide v13, v0, Le/X0;->h:J

    invoke-direct/range {v2 .. v14}, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;-><init>(JJJJJJ)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    sput-object v0, Lh/H;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    sput-object v0, Lh/H;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lh/t;

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    const/high16 v3, -0x7fff0000

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lh/t;-><init>(IIII)V

    sput-object v0, Lh/H;->e:Lh/t;

    const-wide v0, 0xff008cadL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    new-instance v0, Lh/t;

    const v1, -0x7ffefff2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v2, v1, v3}, Lh/t;-><init>(IIII)V

    sput-object v0, Lh/H;->h:Lh/t;

    new-instance v0, Lh/t;

    const v1, -0x7ffdfffb

    const v3, -0x7ffefffe

    const v4, -0x7ffdfffc

    invoke-direct {v0, v4, v1, v3}, Lh/t;-><init>(III)V

    sput-object v0, Lh/H;->i:Lh/t;

    new-instance v0, Lh/t;

    const v1, -0x7ffdfff7

    const v3, -0x7ffefffc

    const v4, -0x7ffdfff8

    invoke-direct {v0, v4, v1, v3}, Lh/t;-><init>(III)V

    sput-object v0, Lh/H;->j:Lh/t;

    new-instance v0, Lh/t;

    const v1, -0x7ffdfff5

    const v3, -0x7ffefffb

    const v4, -0x7ffdfff6

    invoke-direct {v0, v4, v1, v3}, Lh/t;-><init>(III)V

    sput-object v0, Lh/H;->k:Lh/t;

    new-instance v1, Lh/t;

    const v3, -0x7ffdfff9

    const v4, -0x7ffefffd    # -9.184E-41f

    const v5, -0x7ffdfffa

    invoke-direct {v1, v5, v3, v4}, Lh/t;-><init>(III)V

    sput-object v1, Lh/H;->l:Lh/t;

    new-instance v3, Lh/t;

    const v4, -0x7ffdffed

    const v5, -0x7ffefff7

    const v6, -0x7ffdffee

    invoke-direct {v3, v6, v4, v5}, Lh/t;-><init>(III)V

    sput-object v3, Lh/H;->m:Lh/t;

    new-instance v4, Lh/t;

    const v5, -0x7ffdfff1

    const v6, -0x7ffefff9

    const v7, -0x7ffdfff2

    invoke-direct {v4, v7, v5, v6}, Lh/t;-><init>(III)V

    sput-object v4, Lh/H;->n:Lh/t;

    new-instance v4, Lh/t;

    const v5, -0x7ffdffef

    const v6, -0x7ffefff8

    const v7, -0x7ffdfff0

    invoke-direct {v4, v7, v5, v6}, Lh/t;-><init>(III)V

    sput-object v4, Lh/H;->o:Lh/t;

    new-instance v4, Lh/t;

    const v5, -0x7ffdffeb

    const v6, -0x7ffefff6

    const v7, -0x7ffdffec

    invoke-direct {v4, v7, v5, v6}, Lh/t;-><init>(III)V

    sput-object v4, Lh/H;->p:Lh/t;

    new-instance v4, Lh/t;

    const v5, -0x7ffdffe7

    const v6, -0x7ffefff4

    const v7, -0x7ffdffe8

    invoke-direct {v4, v7, v5, v6}, Lh/t;-><init>(III)V

    sput-object v4, Lh/H;->q:Lh/t;

    new-instance v5, Lh/t;

    const v6, -0x7ffdfffe

    const v7, -0x7ffdfffd

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v2, v8}, Lh/t;-><init>(IIII)V

    sput-object v5, Lh/H;->r:Lh/t;

    new-instance v6, Lh/t;

    const v7, -0x7ffdfff3

    const v9, -0x7ffefffa

    const v10, -0x7ffdfff4

    invoke-direct {v6, v10, v7, v9}, Lh/t;-><init>(III)V

    sput-object v6, Lh/H;->s:Lh/t;

    new-instance v6, Lh/t;

    const v7, -0x7ffdffe9

    const v9, -0x7ffefff5

    const v10, -0x7ffdffea

    invoke-direct {v6, v10, v7, v9}, Lh/t;-><init>(III)V

    new-instance v7, Lh/t;

    const v9, -0x7ffdffe6

    const v10, -0x7ffdffe5

    invoke-direct {v7, v9, v10, v2, v8}, Lh/t;-><init>(IIII)V

    sput-object v7, Lh/H;->t:Lh/t;

    new-instance v7, Lh/t;

    const v9, -0x7ffdffe4

    const v10, -0x7ffdffe3

    invoke-direct {v7, v9, v10, v2, v8}, Lh/t;-><init>(IIII)V

    sput-object v7, Lh/H;->u:Lh/t;

    sput-object v0, Lh/H;->v:Lh/t;

    sput-object v1, Lh/H;->w:Lh/t;

    sput-object v3, Lh/H;->x:Lh/t;

    sput-object v4, Lh/H;->y:Lh/t;

    sput-object v5, Lh/H;->z:Lh/t;

    sput-object v6, Lh/H;->B:Lh/t;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    const v1, 0x235711ae

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_3

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_5
    :goto_3
    sget-object v2, Lh/H;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;

    const v3, 0x70039723

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;->Dark:Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    sget-object v3, Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;->Light:Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;

    if-ne v2, v3, :cond_7

    move v3, v4

    goto :goto_5

    :cond_7
    sget-object v3, Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;->Auto:Lcom/adobe/scan/sdk/ScanUIManager$ThemeType;

    if-ne v2, v3, :cond_d

    invoke-static {v6}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v2

    goto :goto_4

    :goto_5
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Lh/H;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    const v9, 0x7003b4e4

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v7, :cond_9

    if-ne v9, v10, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v67, v1

    move-object/from16 v68, v10

    goto/16 :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    sget-object v11, Le/j1;->b:Le/i1;

    iget-object v12, v11, Le/i1;->w:Le/X0;

    iget-wide v13, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    iget-wide v4, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    iget-wide v7, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    move-wide v15, v4

    move-wide/from16 v17, v7

    invoke-static/range {v12 .. v18}, Le/X0;->a(Le/X0;JJJ)Le/X0;

    move-result-object v53

    iget-object v4, v11, Le/i1;->D:Le/Z0;

    iget-wide v7, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    iget-wide v12, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    invoke-static {v4, v7, v8, v12, v13}, Le/Z0;->a(Le/Z0;JJ)Le/Z0;

    move-result-object v60

    iget-object v4, v11, Le/i1;->F:Le/y;

    iget-wide v13, v2, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    iget-wide v7, v4, Le/y;->b:J

    move-object v2, v10

    iget-wide v9, v4, Le/y;->c:J

    iget-wide v5, v4, Le/y;->d:J

    move/from16 v67, v1

    move-object/from16 v68, v2

    iget-wide v1, v4, Le/y;->e:J

    new-instance v12, Le/y;

    move-wide/from16 v21, v1

    move-wide/from16 v19, v5

    move-wide v15, v7

    move-wide/from16 v17, v9

    invoke-direct/range {v12 .. v22}, Le/y;-><init>(JJJJJ)V

    const v65, 0x5fbfffff

    const/16 v66, 0x3

    move-object/from16 v62, v12

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-static/range {v11 .. v66}, Le/i1;->a(Le/i1;JJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;II)Le/i1;

    move-result-object v9

    move-object/from16 v6, p2

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_7
    move-object v2, v9

    check-cast v2, Le/i1;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lh/H;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    const v5, 0x700414cb

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_a

    move-object/from16 v4, v68

    if-ne v5, v4, :cond_b

    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    sget-object v8, Le/j1;->a:Le/i1;

    iget-object v9, v8, Le/i1;->w:Le/X0;

    iget-wide v10, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->previewBackground:J

    iget-wide v12, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBar:J

    iget-wide v14, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->progressBarTrack:J

    invoke-static/range {v9 .. v15}, Le/X0;->a(Le/X0;JJJ)Le/X0;

    move-result-object v50

    iget-object v4, v8, Le/i1;->D:Le/Z0;

    iget-wide v9, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotInner:J

    iget-wide v11, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->boundaryDetectorDotOuter:J

    invoke-static {v4, v9, v10, v11, v12}, Le/Z0;->a(Le/Z0;JJ)Le/Z0;

    move-result-object v57

    iget-object v4, v8, Le/i1;->F:Le/y;

    iget-wide v10, v1, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;->cropBoundary:J

    iget-wide v12, v4, Le/y;->b:J

    iget-wide v14, v4, Le/y;->c:J

    move-object v1, v8

    iget-wide v7, v4, Le/y;->d:J

    iget-wide v5, v4, Le/y;->e:J

    new-instance v9, Le/y;

    move-wide/from16 v18, v5

    move-wide/from16 v16, v7

    invoke-direct/range {v9 .. v19}, Le/y;-><init>(JJJJJ)V

    const v62, 0x5fbfffff

    const/16 v63, 0x3

    move-object/from16 v59, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v63}, Le/i1;->a(Le/i1;JJJJJJJJJJJJJJJJJJJJLe/h1;Le/X0;Le/Y0;Le/e1;Le/g1;Le/k1;Le/a1;Le/a0;Le/Z0;Le/b;Le/y;Le/G0;Le/f1;II)Le/i1;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object v1, v5

    check-cast v1, Le/i1;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v4, v67, 0xc

    const v5, 0xe000

    and-int v7, v4, v5

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Le/x;->a(Le/i1;Le/i1;ZLandroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v2, Le/W$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    move/from16 v8, p3

    invoke-direct {v2, v8, v3, v0, v5}, Le/W$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void

    :cond_d
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getToolDescription(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)Lh/t;
    .locals 0

    sget-object p0, Lh/G;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lh/H;->p:Lh/t;

    return-object p0

    :pswitch_1
    sget-object p0, Lh/H;->o:Lh/t;

    return-object p0

    :pswitch_2
    sget-object p0, Lh/H;->j:Lh/t;

    return-object p0

    :pswitch_3
    sget-object p0, Lh/H;->i:Lh/t;

    return-object p0

    :pswitch_4
    sget-object p0, Lh/H;->n:Lh/t;

    return-object p0

    :pswitch_5
    sget-object p0, Lh/H;->v:Lh/t;

    return-object p0

    :pswitch_6
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
