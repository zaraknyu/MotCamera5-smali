.class public final Landroidx/compose/ui/focus/FocusPropertiesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# instance fields
.field public canFocus:Z

.field public down:Landroidx/compose/ui/focus/FocusRequester;

.field public end:Landroidx/compose/ui/focus/FocusRequester;

.field public left:Landroidx/compose/ui/focus/FocusRequester;

.field public next:Landroidx/compose/ui/focus/FocusRequester;

.field public onEnter:Lkotlin/jvm/internal/Lambda;

.field public onExit:Lkotlin/jvm/internal/Lambda;

.field public previous:Landroidx/compose/ui/focus/FocusRequester;

.field public right:Landroidx/compose/ui/focus/FocusRequester;

.field public start:Landroidx/compose/ui/focus/FocusRequester;

.field public up:Landroidx/compose/ui/focus/FocusRequester;


# virtual methods
.method public final getCanFocus()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return p0
.end method

.method public final setCanFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return-void
.end method

.method public final setOnEnter(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Lkotlin/jvm/internal/Lambda;

    return-void
.end method

.method public final setOnExit(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Lkotlin/jvm/internal/Lambda;

    return-void
.end method
