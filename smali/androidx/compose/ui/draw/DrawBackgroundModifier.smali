.class public final Landroidx/compose/ui/draw/DrawBackgroundModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public onDraw:Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawBackgroundModifier;->onDraw:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void
.end method
