.class public final Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

.field public static final INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget p0, p0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/saveable/SaveableHolder;

    check-cast p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iget-object p0, p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    iget-object p1, p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    iget-object p2, p1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v0, p1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v10, p2, v9

    aget-object v9, v0, v9

    check-cast v9, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-interface {v9}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {p0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-interface {p0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableHolder;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
