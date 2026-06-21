.class public final Lc/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/Z;

.field public static final b:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/Z;->a:Lc/Z;

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    sput-object v0, Lc/Z;->b:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not handled."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "c.Z"

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p0, "UNKNOWN"

    return-object p0

    .line 7
    :cond_0
    const-string p0, "LIGHT_TEXT"

    return-object p0

    .line 8
    :cond_1
    const-string p0, "WHITEBOARD"

    return-object p0

    .line 9
    :cond_2
    const-string p0, "GRAYSCALE"

    return-object p0

    .line 10
    :cond_3
    const-string p0, "AUTO"

    return-object p0

    .line 11
    :cond_4
    const-string p0, "ORIGINAL"

    return-object p0

    .line 12
    :cond_5
    const-string p0, "INVALID"

    return-object p0
.end method

.method public static b(Lc/X;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget p0, p0, Lc/X;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lc/Z;->b:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/Y;

    const/4 v2, 0x6

    if-nez v0, :cond_0

    new-instance v0, Lc/Y;

    invoke-direct {v0, p0, v2}, Lc/Y;-><init>(II)V

    :cond_0
    iget-object v0, v0, Lc/Y;->c:Lc/w;

    check-cast p1, Le/i$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Le/i$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/w;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/Y;

    if-nez v0, :cond_1

    new-instance v0, Lc/Y;

    invoke-direct {v0, p0, v2}, Lc/Y;-><init>(II)V

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v2, v3, p1, v4}, Lc/Y;->a(Lc/Y;JLc/w;I)Lc/Y;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lc/X;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, -0x79ce13

    .line 1
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p4, 0xc00

    if-nez v1, :cond_7

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v0, v0, 0x493

    const/16 v1, 0x492

    if-ne v0, v1, :cond_9

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    .line 2
    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    .line 3
    :cond_9
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_a

    new-instance v0, Lc/Z$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lc/Z$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 4
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method
