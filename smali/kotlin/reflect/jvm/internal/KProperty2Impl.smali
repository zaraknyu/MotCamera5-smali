.class public Lkotlin/reflect/jvm/internal/KProperty2Impl;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final _getter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl;->_getter:Ljava/lang/Object;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl;->_getter:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    return-object p0
.end method

.method public final getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl;->_getter:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl;->_getter:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
