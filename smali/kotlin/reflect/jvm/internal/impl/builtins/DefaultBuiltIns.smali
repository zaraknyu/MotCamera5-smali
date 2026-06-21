.class public final Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
.super Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.source "SourceFile"


# static fields
.field public static final Instance$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method
