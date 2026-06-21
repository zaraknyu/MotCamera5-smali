.class public final La/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final f:La/k;

.field public static final g:Ljava/text/DecimalFormat;


# instance fields
.field public final a:Ljava/io/FileOutputStream;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/s;->f:La/k;

    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    sput-object v0, La/s;->g:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/s;->a:Ljava/io/FileOutputStream;

    iput-object p2, p0, La/s;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/s;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(La/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, La/r;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, La/r;

    iget v4, v3, La/r;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, La/r;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, La/r;

    invoke-direct {v3, v0, v2}, La/r;-><init>(La/s;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, La/r;->i:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    iget v5, v3, La/r;->k:I

    const/4 v7, 0x3

    const-string v8, "\r\nendstream\r\nendobj\r\n"

    const/4 v9, 0x2

    const/4 v12, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v12, :cond_2

    if-ne v5, v9, :cond_1

    iget v0, v3, La/r;->g:I

    iget v1, v3, La/r;->f:I

    iget v4, v3, La/r;->e:I

    iget-boolean v5, v3, La/r;->h:Z

    iget v13, v3, La/r;->d:I

    iget v14, v3, La/r;->c:I

    iget-object v15, v3, La/r;->b:La/q;

    iget-object v3, v3, La/r;->a:La/s;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v7

    move/from16 v19, v12

    const/16 p2, 0x0

    const/16 v16, 0x4

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, La/r;->g:I

    iget-boolean v1, v3, La/r;->h:Z

    iget v5, v3, La/r;->f:I

    iget v13, v3, La/r;->e:I

    iget v14, v3, La/r;->d:I

    iget v15, v3, La/r;->c:I

    const/16 p2, 0x0

    iget-object v10, v3, La/r;->b:La/q;

    const/16 v16, 0x4

    iget-object v6, v3, La/r;->a:La/s;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    throw p2

    :cond_4
    :goto_1
    move/from16 v21, v0

    move/from16 v33, v1

    move-object/from16 p0, v6

    move/from16 v17, v7

    move/from16 v20, v9

    move-object v1, v10

    move/from16 v19, v12

    move/from16 v32, v14

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p2

    move-object v9, v6

    move-object v12, v9

    move-object v7, v3

    move v14, v13

    move-object v3, v12

    move v13, v5

    move-object v5, v3

    goto/16 :goto_8

    :cond_5
    const/16 p2, 0x0

    const/16 v16, 0x4

    .line 25
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object v2, v1, La/q;->a:Ljava/util/List;

    iget-object v5, v1, La/q;->b:Lc/v1;

    .line 27
    iget-object v6, v0, La/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v13, v6, 0x2

    add-int/2addr v6, v7

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v14, v6

    add-int/lit8 v15, v14, 0x1

    move/from16 v17, v7

    .line 29
    iget-object v7, v1, La/q;->c:Lc/J;

    if-nez v7, :cond_7

    .line 30
    iget-boolean v7, v1, La/q;->d:Z

    if-nez v7, :cond_7

    .line 31
    iget-boolean v7, v1, La/q;->e:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v12

    :goto_3
    const-string v18, ""

    if-eqz v7, :cond_8

    move/from16 v19, v12

    .line 32
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 33
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    move/from16 v20, v9

    const-string v9, "/AF[%1$d 0 R]"

    invoke-static {v9, v12}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v9

    goto :goto_4

    :cond_8
    move/from16 v20, v9

    move/from16 v19, v12

    move-object/from16 v27, v18

    .line 34
    :goto_4
    iget-object v9, v1, La/q;->f:Ljava/lang/Object;

    .line 35
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v12, v9, 0x1

    if-eqz v7, :cond_9

    add-int/lit8 v21, v14, 0x2

    move/from16 v11, v21

    goto :goto_5

    :cond_9
    move v11, v14

    :goto_5
    add-int/lit8 v30, v11, 0x1

    if-nez v9, :cond_a

    .line 36
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 37
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v1, "/Annots %1$d 0 R"

    invoke-static {v1, v9}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    :cond_a
    move-object/from16 v28, v18

    .line 38
    iget v1, v5, Lc/v1;->a:F

    .line 39
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, v1}, Ljava/lang/Float;-><init>(F)V

    .line 40
    iget v1, v5, Lc/v1;->b:F

    move-object/from16 v18, v2

    .line 41
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 42
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 43
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v6, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    move-object/from16 v31, v3

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v32, v6

    const/16 v6, 0xa

    move/from16 v33, v7

    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v7

    const/4 v9, 0x0

    .line 46
    :goto_6
    iget-boolean v6, v7, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v6, :cond_c

    .line 47
    invoke-virtual {v7}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v6

    add-int/lit8 v21, v9, 0x1

    if-ltz v9, :cond_b

    move-object/from16 v22, v7

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v35, v11

    const-string v11, "/Im"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " 0 R"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v21

    move-object/from16 v7, v22

    move/from16 v11, v35

    goto :goto_6

    .line 50
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw p2

    :cond_c
    move/from16 v35, v11

    const/16 v25, 0x0

    const/16 v26, 0x3e

    .line 51
    const-string v22, " "

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v26}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v23

    .line 52
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 54
    new-instance v2, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 55
    filled-new-array/range {v21 .. v28}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%1$d 0 obj\r\n<</Contents %2$d 0 R/MediaBox[0.0 0.0 %4$.1f %5$.1f]/Parent 2 0 R/Resources<</XObject<<%3$s>>/Font<</Ft0<</BaseFont/Times-Roman/Encoding/WinAnsiEncoding/Subtype/Type1/Type/Font>>>>>>/Rotate %6$d%7$s%8$s/Type/Page>>\r\nendobj\r\n"

    invoke-static {v2, v1}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/String;)V

    .line 56
    iget-object v1, v5, Lc/v1;->c:Ljava/lang/Object;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v1

    move-object v9, v2

    move v11, v13

    move v13, v15

    move-object/from16 v6, v18

    move/from16 v2, v30

    move-object/from16 v7, v31

    move/from16 v5, v35

    const/4 v10, 0x0

    move v15, v12

    :goto_7
    move-object/from16 v1, p1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v18, v10, 0x1

    if-ltz v10, :cond_d

    .line 59
    check-cast v12, Lc/x;

    .line 60
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, La/m;

    move-object/from16 p0, v3

    .line 61
    iget-object v3, v12, Lc/x;->a:Lc/H;

    move-object/from16 v22, v6

    .line 62
    iget v6, v3, Lc/H;->a:I

    .line 63
    iget v3, v3, Lc/H;->b:I

    move-object/from16 p1, v9

    .line 64
    new-instance v9, Landroid/graphics/Matrix;

    .line 65
    iget-object v12, v12, Lc/x;->g:Landroid/graphics/Matrix;

    .line 66
    invoke-direct {v9, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    int-to-float v6, v6

    int-to-float v3, v3

    .line 67
    invoke-virtual {v9, v6, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/16 v3, 0x9

    .line 68
    new-array v3, v3, [F

    .line 69
    invoke-virtual {v9, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v29, 0x0

    .line 70
    aget v6, v3, v29

    .line 71
    aget v9, v3, v17

    .line 72
    aget v12, v3, v19

    move-object/from16 v23, v3

    .line 73
    aget v3, v23, v16

    move/from16 v24, v10

    .line 74
    aget v10, v23, v20

    const/16 v25, 0x5

    move/from16 v26, v11

    .line 75
    aget v11, v23, v25

    move/from16 v23, v13

    .line 76
    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, v6}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v9}, Ljava/lang/Float;-><init>(F)V

    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, v12}, Ljava/lang/Float;-><init>(F)V

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v10}, Ljava/lang/Float;-><init>(F)V

    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v38, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v9

    move-object/from16 v39, v10

    move-object/from16 v37, v12

    move-object/from16 v34, v13

    .line 77
    filled-new-array/range {v34 .. v39}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%1$.4f %2$.4f %3$.4f %4$.4f %5$.4f %6$.4f cm"

    invoke-static {v6, v3}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p1

    move-object v12, v9

    move v11, v5

    move/from16 v21, v15

    move-object/from16 v6, v22

    move/from16 v13, v23

    move/from16 v10, v24

    move/from16 v15, v26

    move-object/from16 v5, p0

    move-object/from16 p0, v0

    .line 79
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 p1, v1

    const-string v1, "q "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /Im"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Do Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v3, v5

    move v5, v11

    move-object v9, v12

    move v11, v15

    move/from16 v10, v18

    move/from16 v15, v21

    goto/16 :goto_7

    .line 81
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw p2

    :cond_e
    move-object/from16 v22, v6

    move-object/from16 p1, v9

    move/from16 v26, v11

    move/from16 v23, v13

    const/4 v13, 0x0

    move v3, v14

    const/16 v14, 0x3e

    .line 82
    const-string v10, " "

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v21, v2

    move-object/from16 v18, v4

    move/from16 v6, v23

    move/from16 v2, v26

    move v4, v3

    move/from16 v3, v33

    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v9

    .line 83
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 84
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 86
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v2

    const-string v10, "%1$d 0 obj<</Length %2$d>>stream\r\n"

    invoke-static {v10, v2}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, La/s;->b(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v9}, La/s;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v8}, La/s;->a(Ljava/lang/String;)V

    .line 90
    iput-object v0, v7, La/r;->a:La/s;

    iput-object v1, v7, La/r;->b:La/q;

    iput v4, v7, La/r;->c:I

    iput v6, v7, La/r;->d:I

    iput-boolean v3, v7, La/r;->h:Z

    iput v15, v7, La/r;->e:I

    iput v5, v7, La/r;->f:I

    move/from16 v2, v21

    iput v2, v7, La/r;->g:I

    move/from16 v9, v20

    iput v9, v7, La/r;->k:I

    .line 91
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_f

    check-cast v10, La/m;

    .line 92
    iget-object v12, v10, La/m;->a:Ljava/io/File;

    .line 93
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    move-object/from16 v21, v1

    .line 94
    iget v1, v10, La/m;->b:I

    .line 95
    iget v10, v10, La/m;->c:I

    add-int v9, v32, v9

    move/from16 v22, v2

    .line 96
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 97
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 98
    filled-new-array {v2, v9, v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%1$d 0 obj\r\n<</BitsPerComponent 8/ColorSpace/DeviceRGB/Filter/DCTDecode/Width %2$d/Height %3$d/Length %4$d/Type/XObject/Subtype/Image>>stream\r\n"

    invoke-static {v2, v1}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    iget v2, v0, La/s;->e:I

    iget-object v9, v0, La/s;->a:Ljava/io/FileOutputStream;

    invoke-static {v1, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v9

    add-int/2addr v9, v2

    iput v9, v0, La/s;->e:I

    .line 101
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    invoke-virtual {v0, v8}, La/s;->a(Ljava/lang/String;)V

    move v9, v11

    move-object/from16 v1, v21

    move/from16 v2, v22

    goto :goto_9

    .line 103
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw p2

    :cond_10
    move-object/from16 v21, v1

    move/from16 v22, v2

    .line 104
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_11

    return-object v2

    :cond_11
    move v14, v4

    move v1, v5

    move v13, v6

    move v4, v15

    move-object/from16 v15, v21

    move v5, v3

    move-object v3, v0

    move/from16 v0, v22

    .line 105
    :goto_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "\'D:\'yyyyMMddHHmmssZ"

    invoke-direct {v2, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 107
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v20, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_12

    .line 109
    const-string v7, "Z"

    const/4 v9, 0x0

    .line 110
    invoke-static {v2, v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_13

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x27

    .line 112
    invoke-virtual {v7, v6, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    .line 115
    :cond_13
    :goto_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v5, :cond_1d

    .line 116
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 117
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%1$d 0 obj\r\n<</AFRelationship/ADBE_Contact_Private/EF<</F %2$d 0 R>>/F(pageEntities.json)/Type/Filespec/UF(pageEntities.json)>>\r\nendobj\r\n"

    invoke-static {v6, v5}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, La/s;->b(Ljava/lang/String;)V

    .line 118
    iget-object v5, v15, La/q;->c:Lc/J;

    iget-boolean v6, v15, La/q;->e:Z

    .line 119
    const-string v7, "{ \"type\": \"Form\", \"isBackSide\": false }"

    const-string v10, "{ \"type\": \"BusinessCard\", \"isBackSide\": false }"

    const-string v11, "{ \"type\": \"Document\", \"isBackSide\": false }"

    if-eqz v5, :cond_1b

    .line 120
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_1a

    move/from16 v12, v19

    if-eq v5, v12, :cond_19

    const/4 v12, 0x2

    if-eq v5, v12, :cond_17

    move/from16 v12, v17

    if-eq v5, v12, :cond_16

    move/from16 v6, v16

    if-ne v5, v6, :cond_15

    :cond_14
    move-object v7, v10

    goto :goto_d

    :cond_15
    new-instance v0, Lcom/google/gson/JsonParseException;

    .line 121
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 122
    throw v0

    .line 123
    :cond_16
    const-string v7, "{ \"type\": \"ID Card\", \"isBackSide\": false }"

    goto :goto_d

    :cond_17
    if-eqz v6, :cond_18

    goto :goto_d

    :cond_18
    move-object v7, v11

    goto :goto_d

    .line 124
    :cond_19
    const-string v7, "{ \"type\": \"Book\", \"isBackSide\": false }"

    goto :goto_d

    .line 125
    :cond_1a
    const-string v7, "{ \"type\": \"Whiteboard\", \"isBackSide\": false }"

    goto :goto_d

    .line 126
    :cond_1b
    iget-boolean v5, v15, La/q;->d:Z

    if-eqz v5, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v10, v11

    :goto_c
    if-eqz v6, :cond_14

    .line 127
    :goto_d
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 128
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 129
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 130
    filled-new-array {v5, v10, v2}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%1$d 0 obj\r\n<</DL %2$d/Length %2$d/Params<</ModDate(%3$s)/Size %2$d>>/Subtype/application#2Fjson/Type/EmbeddedFile>>stream\r\n"

    invoke-static {v6, v5}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, La/s;->b(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, v7}, La/s;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3, v8}, La/s;->a(Ljava/lang/String;)V

    :cond_1d
    if-eqz v4, :cond_1f

    .line 133
    iget-object v4, v15, La/q;->f:Ljava/lang/Object;

    .line 134
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v4

    new-instance v5, La/s$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, La/s$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-static {v4, v5}, La/k;->a(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v4

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0 obj\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nendobj\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, La/s;->b(Ljava/lang/String;)V

    .line 136
    iget-object v1, v15, La/q;->f:Ljava/lang/Object;

    .line 137
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v11, v9

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v11, 0x1

    if-ltz v11, :cond_1e

    check-cast v4, La/o;

    mul-int/lit8 v11, v11, 0x2

    add-int v26, v11, v0

    .line 138
    const-string v6, "pageAnnot"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v6, v4, La/o;->a:Lg/b;

    .line 140
    iget-object v7, v15, La/q;->b:Lc/v1;

    .line 141
    iget-object v9, v7, Lc/v1;->c:Ljava/lang/Object;

    .line 142
    iget v10, v6, Lg/b;->d:I

    .line 143
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v22, v9

    check-cast v22, Lc/x;

    .line 144
    iget-object v4, v4, La/o;->b:Landroid/graphics/Matrix;

    move-object/from16 v25, v2

    move-object/from16 v24, v4

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    .line 145
    invoke-virtual/range {v21 .. v26}, Lg/b;->a(Lc/x;Lc/v1;Landroid/graphics/Matrix;Ljava/lang/String;I)Lg/d;

    move-result-object v2

    .line 146
    iget-object v4, v2, Lg/d;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {v3, v4}, La/s;->b(Ljava/lang/String;)V

    .line 148
    iget-object v4, v2, Lg/d;->b:Ljava/lang/String;

    .line 149
    invoke-virtual {v3, v4}, La/s;->b(Ljava/lang/String;)V

    .line 150
    iget-object v2, v2, Lg/d;->c:Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v2}, La/s;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v8}, La/s;->a(Ljava/lang/String;)V

    move v11, v5

    move-object/from16 v2, v25

    goto :goto_e

    .line 153
    :cond_1e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw p2

    .line 154
    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final a()V
    .locals 8

    .line 155
    iget-object v0, p0, La/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 156
    iget-object v3, p0, La/s;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Adobe Scan Core"

    const-string v6, "1.5.0"

    const-string v7, "10.0.47.24"

    filled-new-array {v4, v3, v7, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%1$d 0 obj\n<</Creator (%2$s %3$s)/Producer (%4$s %5$s)>>\r\nendobj\r\n"

    invoke-static {v4, v3}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, La/s;->b(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 158
    :goto_0
    iget v4, p0, La/s;->e:I

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v2

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "xref\r\n0 %1$d\r\n0000000001 65535 f\r\n"

    invoke-static {v6, v2}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, La/s;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "iterator(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v6, "next(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "%1$010d 00000 n\r\n"

    invoke-static {v6, v2}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, La/s;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "trailer\r\n<</Size %1$d/Root 1 0 R"

    invoke-static {v2, v0}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/s;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/Info %1$d 0 R"

    invoke-static {v1, v0}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/s;->a(Ljava/lang/String;)V

    .line 165
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ">>\r\nstartxref\r\n%1$d\r\n%%%%EOF\r\n"

    invoke-static {v1, v0}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/s;->a(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, La/s;->a:Ljava/io/FileOutputStream;

    .line 167
    sget v0, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, La/s;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget v0, p0, La/s;->e:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, La/s;->e:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "%PDF-1.3\r\n%\u00e2\u00e3\u00cf\u00d3\r\n"

    invoke-virtual {p0, v0}, La/s;->a(Ljava/lang/String;)V

    .line 5
    const-string v0, "1 0 obj\r\n<</Pages 2 0 R /Type/Catalog>>\r\nendobj\r\n"

    invoke-virtual {p0, v0}, La/s;->b(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/q;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x20

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v4, " 0 R"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v4, v3, La/q;->a:Ljava/util/List;

    iget-object v5, v3, La/q;->f:Ljava/lang/Object;

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    .line 15
    iget-object v7, v3, La/q;->c:Lc/J;

    if-nez v7, :cond_1

    .line 16
    iget-boolean v7, v3, La/q;->d:Z

    if-nez v7, :cond_1

    .line 17
    iget-boolean v3, v3, La/q;->e:Z

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v6, v4, 0x4

    .line 18
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v3

    :cond_3
    add-int/2addr v2, v6

    goto :goto_0

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "2 0 obj\r\n<</Count %1$d/Kids[%2$s]/Type/Pages>>\r\nendobj\r\n"

    invoke-static {v0, p1}, La/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, La/s;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, La/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, La/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, La/s;->a:Ljava/io/FileOutputStream;

    sget v0, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
