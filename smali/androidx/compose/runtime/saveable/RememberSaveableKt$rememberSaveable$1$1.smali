.class public final Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $finalKey:Ljava/lang/String;

.field public final synthetic $holder:Landroidx/compose/runtime/saveable/SaveableHolder;

.field public final synthetic $inputs:[Ljava/lang/Object;

.field public final synthetic $registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final synthetic $saver:Landroidx/compose/runtime/saveable/Saver;

.field public final synthetic $value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$holder:Landroidx/compose/runtime/saveable/SaveableHolder;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$saver:Landroidx/compose/runtime/saveable/Saver;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$finalKey:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$value:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$inputs:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$holder:Landroidx/compose/runtime/saveable/SaveableHolder;

    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iput-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$finalKey:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v4, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$saver:Landroidx/compose/runtime/saveable/Saver;

    iput-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$value:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$inputs:[Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    iget-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->unregister()V

    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register$1()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
