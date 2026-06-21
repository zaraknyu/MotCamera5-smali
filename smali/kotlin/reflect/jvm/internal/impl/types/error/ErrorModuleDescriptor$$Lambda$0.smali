.class public final Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor$$Lambda$0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor$$Lambda$0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorModuleDescriptor;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    return-object p0
.end method
