/*
 * Software License, Version 1.0 Copyright 2013 SRA International, Inc. Copyright Notice.  
 * The software subject to this notice and license includes both human readable source 
 * code form and machine readable, binary, object code form (the "caBIG Software").
 *
 * Please refer to the complete License text for full details at the root of the project.
 */

package gov.nih.nci.ncicb.tcga.dcc.io.api.rpc.reflect;


/**
 * Container for RPC methods.
 * 
 * @author nichollsmc
 */
public class RpcMethodRegistry {

//    private Map<String, RpcMethodResolver> rpcResolvers   = new FastMap<String, RpcMethodResolver>();
//    private final static Pattern           TARGET_PATTERN = Pattern.compile("^([A-Za-z]+)\\.([A-Za-z]+)$");
//
//    public RpcMethodRegistry() {
//        registerObject("system", new SystemNamespace());
//    }
//
//    public void registerObject(String withName, Object object) {
//        rpcResolvers.put(withName, new RpcMethodResolver(object));
//    }
//
//    public JsonObject invokeTarget(String target, Object... args) throws RpcException {
//        Matcher targetMatcher = TARGET_PATTERN.matcher(target);
//
//        if (!targetMatcher.matches()) {
//            throw new RpcException("Not a valid target [" + target + "]");
//        }
//
//        String targetObject = targetMatcher.group(1);
//        String targetMethod = targetMatcher.group(2);
//
//        if (rpcResolvers.containsKey(targetObject)) {
//            RpcMethodResolver rpcMethodResolver = rpcResolvers.get(targetObject);
//
//            try {
//                return rpcMethodResolver.dispatch(targetMethod, args);
//            }
//            catch (Exception e) {
//                throw new RpcException(e);
//            }
//        }
//        else {
//            throw new RpcException("No such invocation target [" + targetObject + "]");
//        }
//    }
//
//    public List<String> callableTargets() {
//        List<String> targets = new FastTable<String>();
//
//        for (String objectKey : rpcResolvers.keySet()) {
//            RpcMethodResolver rpcMethodResolver = rpcResolvers.get(objectKey);
//
//            for (String methodName : rpcMethodResolver.methodNames()) {
//                targets.add(objectKey + "." + methodName);
//            }
//        }
//
//        return targets;
//    }
//
//    private class SystemNamespace {
//        public JsonObject listMethods(RpcContext context) {
//            return new JsonObject().putArray("methods", new JsonArray(callableTargets().toArray()));
//        }
//    }

}